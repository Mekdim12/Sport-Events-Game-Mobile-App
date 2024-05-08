import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTable extends StatefulWidget {
  final dynamic content;
  final double heightOfComponent;
  final bool isComponentLabel;

  const CustomTable(this.content, this.heightOfComponent, this.isComponentLabel,
      {super.key});

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  @override
  Widget build(BuildContext context) {
    if (widget.isComponentLabel) {
      return CustomTableLabel(widget.content, widget.heightOfComponent);
    } else {
      return CustomTableBody(widget.content, widget.heightOfComponent);
    }
  }
}

class CustomTableLabel extends StatefulWidget {
  final dynamic content;
  final double heightOfComponent;

  const CustomTableLabel(this.content, this.heightOfComponent, {super.key});

  @override
  State<CustomTableLabel> createState() => _CustomTableLabelState();
}

class _CustomTableLabelState extends State<CustomTableLabel> {
  bool isNextButtonDisabled = false;
  bool isPreviousButtonDisabled = false;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(widget.content['padding']),
      decoration: BoxDecoration(
         border: Border.all(color: Colors.red),
         borderRadius: widget.content['border_radius'],
      ),
      height: widget.heightOfComponent,
     child: Center(
    
        child: Text(
          widget.content['label'],
          style: GoogleFonts.onest(
            color:Colors.black,
            fontSize:30,
            fontWeight: FontWeight.bold,
          ),
        
        ),
      )
    );
  }
}
class CustomTableBody extends StatefulWidget {
  final dynamic content;
  final double heightOfComponent;
  const CustomTableBody(this.content, this.heightOfComponent, {super.key});

  @override
  State<CustomTableBody> createState() => _CustomTableBodyState();
}

class _CustomTableBodyState extends State<CustomTableBody> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
