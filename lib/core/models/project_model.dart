// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProjectModel {
  final String projectName;
  final String projectDescription;
  final String projectImage;
  final String projectGitHubUrl;
  final String projectVideo;
  final List<String> projectTechStack;
  ProjectModel({
    required this.projectName,
    required this.projectDescription,
    required this.projectImage,
    required this.projectGitHubUrl,
    required this.projectVideo,
    required this.projectTechStack,
  });
}

final projects = [
  ProjectModel(
    projectName: 'Covid Report',
    projectDescription:
        'This app is built to help people get the latest update on the virus. It is built with Flutter and uses REST API.',
    projectImage: 'project4',
    projectGitHubUrl: 'https://github.com/davidaodejobi/covid-report',
    projectVideo: 'https://covid-report-cd813.web.app/#/',
    projectTechStack: [
      'Flutter',
      'Dart',
      'Android',
      'iOS',
      'REST API',
      'Flutter Web',
      'Responsiveness',
      'Animations',
    ],
  ),
  ProjectModel(
    projectName: 'Flux',
    projectDescription:
        'Flux is a simple and easy to use community kind of app. It is built with Flutter and Firebase(inview). Ih will have features such as chatting, connecting with people, sharing posts, and more.',
    projectImage: 'project1',
    projectGitHubUrl: '',
    projectVideo:
        'https://www.linkedin.com/posts/iamdavidodejobi_community-networking-workingathome-activity-6984559224454307840-3Ape?utm_source=share&utm_medium=member_desktop',
    projectTechStack: [
      'Flutter',
      'Firebase',
      'Dart',
      'Android',
      'Flutter Web',
      'Responsiveness',
      'State Management',
    ],
  ),
  ProjectModel(
    projectName: 'Forecast App',
    projectDescription:
        'This app is built to help people get the latest weather update. It is built with Flutter and uses REST API.',
    projectImage: 'project5',
    projectGitHubUrl: 'https://github.com/davidaodejobi/forecast-weather-app',
    projectVideo: '',
    projectTechStack: [
      'Flutter',
      'Dart',
      'Android',
      'iOS',
      'Animations',
      'REST API',
    ],
  ),
  ProjectModel(
    projectName: 'Lofi-Notes',
    projectDescription:
        'Lofi-Notes is a simple note taking app built with Flutter. It has features such as creating, editing, deleting, and sharing notes.',
    projectImage: 'project2',
    projectGitHubUrl: 'https://github.com/davidaodejobi/mi-dairy',
    projectVideo:
        'https://www.linkedin.com/posts/iamdavidodejobi_day6-100daysofcodechallenge-flutter-activity-6966698276695756801-ijnj?utm_source=share&utm_medium=member_desktop',
    projectTechStack: [
      'Flutter',
      'Dart',
      'Android',
      'iOS',
    ],
  ),
  ProjectModel(
    projectName: 'Credo Engage',
    projectDescription:
        ' Credo Engage is a simple app that basically helps you to engage with and reach more audience by getting trending hashtags. It is built with Flutter, while leaveraging the use of REST API.',
    projectImage: 'project3',
    projectGitHubUrl: 'https://github.com/davidaodejobi/credo_engage',
    projectVideo:
        'https://github.com/davidaodejobi/credo_engage/blob/main/ss/credo_engage.gif',
    projectTechStack: [
      'Flutter',
      'Dart',
      'Android',
      'iOS',
      'REST API',
      'Hackathon',
    ],
  ),
];
