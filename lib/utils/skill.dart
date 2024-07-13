import 'package:portfolio_elsa/all.dart';

//a
final agile = Skill(name: S.current.agile, type: SkillType.hard);
final analysis = Skill(name: S.current.analysis, type: SkillType.soft);
final androidStudio = Skill(name: S.current.androidStudio, type: SkillType.hard);
final aspNet = Skill(name: S.current.aspNet, type: SkillType.hard);
final attentionToDetail = Skill(name: S.current.attentionToDetail, type: SkillType.soft);
final autonomy = Skill(name: S.current.autonomy, type: SkillType.soft);
//b
final bilang = Skill(name: S.current.bilang, type: SkillType.hard);
final bigPicture = Skill(name: S.current.bigPicture, type: SkillType.soft);
final bootstrap = Skill(name: S.current.bootstrap, type: SkillType.hard);
//c
final cSharp = Skill(name: S.current.cSharp, type: SkillType.hard);
final communication = Skill(name: S.current.communication, type: SkillType.soft);
//d
final dart = Skill(name: S.current.dart, type: SkillType.hard);
final doctrine = Skill(name: S.current.doctrine, type: SkillType.hard);
//e
//f
final flutter = Skill(name: S.current.flutter, type: SkillType.hard);
//g
final gherkin = Skill(name: S.current.gherkin, type: SkillType.hard);
final github = Skill(name: S.current.github, type: SkillType.hard);
final gitlab = Skill(name: S.current.gitlab, type: SkillType.hard);
//h
//i
final ionos = Skill(name: S.current.ionos, type: SkillType.hard);
final initiative = Skill(name: S.current.initiative, type: SkillType.soft);
//j
final jira = Skill(name: S.current.jira, type: SkillType.hard);
final jQuery = Skill(name: S.current.jQuery, type: SkillType.hard);
//k
final kanban = Skill(name: S.current.kanban, type: SkillType.hard);
//l
final log4Net = Skill(name: S.current.log4Net, type: SkillType.hard);
//m
final mvc = Skill(name: S.current.mvc, type: SkillType.hard);
final mySql = Skill(name: S.current.mySql, type: SkillType.hard);
//n
final netCore = Skill(name: S.current.netCore, type: SkillType.hard);
final netStandard = Skill(name: S.current.netStandard, type: SkillType.hard);
final ntiers = Skill(name: S.current.ntiers, type: SkillType.hard);
//o
final oracle = Skill(name: S.current.oracle, type: SkillType.hard);
//p
final php = Skill(name: S.current.php, type: SkillType.hard);
final phpStorm = Skill(name: S.current.phpStorm, type: SkillType.hard);
final punctuality = Skill(name: S.current.punctuality, type: SkillType.soft);
//q
//u
//r
final razor = Skill(name: S.current.razor, type: SkillType.hard);
//s
final scrum = Skill(name: S.current.scrum, type: SkillType.hard);
final selenium = Skill(name: S.current.selenium, type: SkillType.hard);
final soapUI = Skill(name: S.current.soapUI, type: SkillType.hard);
final sonarQube = Skill(name: S.current.sonarQube, type: SkillType.hard);
final sourceTree = Skill(name: S.current.sourceTree, type: SkillType.hard);
final sql = Skill(name: S.current.sql, type: SkillType.hard);
final symfony = Skill(name: S.current.symfony, type: SkillType.hard);
//t
final teams = Skill(name: S.current.teams, type: SkillType.hard);
final teamwork = Skill(name: S.current.teamwork, type: SkillType.soft);
final timeManagement = Skill(name: S.current.timeManagement, type: SkillType.hard);
final trello = Skill(name: S.current.trello, type: SkillType.hard);
final twig = Skill(name: S.current.twig, type: SkillType.hard);
//u
//v
//w
//x
//y
final visualStudio = Skill(name: S.current.visualStudio, type: SkillType.hard);
//z

enum SkillType { hard, soft, mad }

class Skill extends StatelessWidget{
  final String name;
  final SkillType type;

  const Skill({
    super.key,
    required this.name,
    required this.type
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: switch(type) {
        SkillType.hard => BoxDecoration(
          color: myLightGreen,
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          border: Border.all(
            color: myDarkGreen,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        SkillType.soft => BoxDecoration(
          color: myLightBlue,
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          border: Border.all(
            color: myDarkBlue,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        SkillType.mad => BoxDecoration(
          color: myLightPurple,
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          border: Border.all(
            color: myDarkPurple,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(2, 2),
            ),
          ],
        ),
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(name, textAlign: TextAlign.center),
      ),
    );
  }
}

class SkillsTable extends StatefulWidget {
  final List<Skill> skills;
  final List<Skill> hardSkills = [];
  final List<Skill> softSkills = [];
  final List<Skill> madSkills = [];

  SkillsTable({super.key, required this.skills}) {
    for(Skill skill in skills) {
      switch(skill.type) {
        case SkillType.hard:
          hardSkills.add(skill);
          break;
        case SkillType.soft:
          softSkills.add(skill);
          break;
        case SkillType.mad:
          madSkills.add(skill);
          break;
      }
    }
  }

  @override
  SkillsTableState createState() => SkillsTableState();
}

class SkillsTableState extends State<SkillsTable> {
  @override
  Widget build(BuildContext context) {
    if(context.mediaQuery.size.width > context.mediaQuery.size.height){
      return buildHorizontal();
    }
    else {
      return buildVertical();
    }
  }
}

extension _SkillTable on State<SkillsTable> {
  Widget skillTable({double size = 0.25, required SkillType type}) {
    List<Skill> skills;
    String skillTitle;
    Color? bgTitleColor;
    Color? bgColor;

    if(type == SkillType.hard) {
      skills = widget.hardSkills;
      skillTitle = S.current.skillTitleHard;
      bgTitleColor = myDarkGreen;
      bgColor = myLightGreen;
    }
    else if (type == SkillType.soft){
      skills = widget.softSkills;
      skillTitle = S.current.skillTitleSoft;
      bgTitleColor = myDarkBlue;
      bgColor = myLightBlue;
    }
    else {
      skills = widget.madSkills;
      skillTitle = S.current.skillTitleMad;
      bgTitleColor = myDarkPurple;
      bgColor = myLightPurple;
    }

    return Flexible(
      child: Column(
        children: [
          Container(
            width: context.mediaQuery.size.width * size,
            decoration: BoxDecoration(
              color: bgTitleColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Text(skillTitle, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            width: context.mediaQuery.size.width * size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: bgColor.withOpacity(0.75),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Center(
              child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  alignment: WrapAlignment.center,
                  children: skills.map((skill) => skill.build(context)).toList()
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension _HorizontalTable on State<SkillsTable> {
  Widget buildHorizontal() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          skillTable(type: SkillType.soft),
          const SizedBox(width: 10),
          skillTable(type: SkillType.hard),
          const SizedBox(width: 10),
          skillTable(type: SkillType.mad),
        ],
      ),
    );
  }
}

extension _VerticalTable on State<SkillsTable> {
  Widget buildVertical() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          skillTable(size: context.mediaQuery.size.width, type: SkillType.soft),
          const SizedBox(height: 10),
          skillTable(size: context.mediaQuery.size.width, type: SkillType.hard),
          const SizedBox(height: 10),
          skillTable(size: context.mediaQuery.size.width, type: SkillType.mad),
        ],
      ),
    );
  }
}