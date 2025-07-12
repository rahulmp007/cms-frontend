class Url {
  static const token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vZGVtby5lZG0xLmluL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjgwNzU3MzQ2LCJleHAiOjE2ODU5NDEzNDYsIm5iZiI6MTY4MDc1NzM0NiwianRpIjoiUXJzOGVMWjZJZXQ0UkxwdiIsInN1YiI6MSwicHJ2IjoiODdlMGFmMWVmOWZkMTU4MTJmZGVjOTcxNTNhMTRlMGIwNDc1NDZhYSJ9.GMxJl9xB9gTjikKNTGm_Vk6M9sM_S-Gn_QZ8PFXEqyg";

  /// base url
  static const baseUrl = 'https://uik.co.in';

  /// Login
  static const login = 'flutternew/index.php?mobile/login';

  /// subject of class
  static const subjectOfClass =
      'flutternew/index.php?mobile/get_subject_of_class_new';

  /// clasess
  static const getclass = 'flutternew/index.php?mobile/get_class';

  /// subject chapters
  static const subjectChapters = 'flutternew/index.php?mobile/get_chapters';

  /// videos
  static const videos = 'flutternew/index.php?mobile/view_video';

  /// notes
  static const notes =
      'https://uik.co.in/textbook/index.php?mobile/view_lecture_notes';
  // 'app/index.php?mobile/view_lecture_notes';

  /// NCERT Textbooks
  /// Get classes
  static const textbookClasses = 'textbook/index.php?mobile/get_class';

  /// Get subjects
  static const textbookSubjects =
      'textbook/index.php?mobile/get_subject_of_class';

  /// Get chapters
  static const textbookChapters = 'textbook/index.php?mobile/get_chapters';

  /// Get lecture notes
  static const textbookLectureNotes =
      'textbook/index.php?mobile/view_lecture_notes';

  /// Prev Year Question Paper

  /// Get classes
  static const prevYearQnClasses = 'qpaper/index.php?mobile/get_class';

  /// Get subjects
  static const prevYearQnSubjects =
      'qpaper/index.php?mobile/get_subject_of_class';

  ///  Get chapters
  static const prevYearQnChapters = 'qpaper/index.php?mobile/get_chapters';

  /// Get lecture notes
  static const prevYearLectureNotes =
      'qpaper/index.php?mobile/view_lecture_notes';

  static const getSystem = 'flutternew/index.php?mobile/get_system';

  static const dailyStudentVerification =
      'flutternew/index.php?mobile/daily_calls';

  /// Hostel
  ///
  static const getAllHostels = 'flutternew/index.php?mobile/get_hostels';

  static const wardenDetails =
      'flutternew/index.php?mobile/hostel_warden_details';

  static const getUserPhoto = 'flutternew/index.php?mobile/get_qr_photo';

  static const logEntry = 'flutternew/index.php?mobile/hostel_log_entry';

  static const uploadStudentImage =
      'flutternew/index.php?mobile/online_student_img_upload';
  static const uploadStudentImageNew =
      'flutternew/index.php?mobile/online_student_img_upload_new';

  static const unimniTalks = 'flutternew/index.php?mobile/get_unimni_talks';

  static const latestVideos = 'flutternew/index.php?mobile/get_latest_videos';

  static const classSchedule = 'flutternew/index.php?mobile/get_class_schedule';

  static const updateUserAgent =
      'flutternew/index.php?mobile/update_student_user_agents';
  static const loginedUser =
      'flutternew/index.php?mobile/get_loggedin_user_profile';

  static const getStudents =
      'flutternew/index.php?mobile/get_students_of_class';

  static const studentAttendance =
      'flutternew/index.php?mobile/get_student_attendance';

  static const attendanceSettings =
      'flutternew/index.php?mobile/get_attendance_settings';

  static const viewQuotes = 'qpaper/index.php?mobile/view_quotes';

  static const viewFacts = 'textbook/index.php?mobile/view_facts';

  static const getExam = 'https://uikexam.edumia.in/api/get_questions';

  static const notification = 'flutternew/index.php?mobile/get_notification';

  static const examsByFilter =
      'https://uikexam.edumia.in/api/get_questions_by_filter_new';

  static const getExams = 'https://uikmarks.edumia.in/api/get_markList?rollNo';

  static const hostelCheckin =
      'flutternew/index.php?mobile/get_student_checkin_details';

  static const viewDocs = 'flutternew/index.php?mobile/view_docs';

  static const saveAllBookmarks =
      'https://uikexam.edumia.in/api/create_question_bookmark';

  static const getSavedBookmarks =
      'https://uikexam.edumia.in/api/get_student_bookmarks';

  static const news = 'qpaper/index.php?mobile/get_class_schedule';

  static const videoReport = 'create_online_video_attendance';

  static const updateVideoReport = 'update_online_video_attendance';

  static const createVideoNote = 'create_video_note';

  static const updateVideoNote = 'update_video_note';

  static const getVideoNotes = 'get_video_note';

  static const recordStudentActivity =
      'https://sa.edumia.in/api/record_student_activity';

  static const qBankCategory =
      'flutternew/index.php?mobile/get_qbank_categories';

  static const notificationNew =
      'flutternew/index.php?mobile/get_notification_full_class';

  static const timeTable = '1/tt/get_timetable_data.php';

  static const gMeetContact = '/1/ml/api.php';

  static const getWardenHostels = 'https://uikhostel.ed1.in/api/get-allhostels';

  static const getWardenRooms = 'https://uikhostel.ed1.in/api/get-rooms';
  static const getStudentOfRooms =
      'https://uikhostel.ed1.in/api/get-rooms-students';
  static const attendanceSections =
      'https://uikhostel.ed1.in/api/get-allsections';

  static const wardenSubmitAttendance =
      'https://uikhostel.ed1.in/api/post-students-attendance';

  static const forumGetSubjects = '1/forum-api/subjects';

  static const forumGetClasses = '1/forum-api/classes';

  static const forumDiscussion = '1/forum-api/posts';

  static const forumChapters = '1/forum-api/chapters';

  static const imageUrl = 'https://app.uik.co.in/uploads/student_image';

  static const wardenHomeStudents = '1/slider/api.php?action=getStudents';

  static const wardenHomeStudentImages =
      'flutternew/uploads/student_image/size';

  static const logHostelEntry =
      'flutternew/index.php?mobile/bulk_hostel_log_entry';

  static const createTopic = 'flutternew/index.php?mobile/create_topic';

  static const createVideoTopic =
      'flutternew/index.php?mobile/create_video_topic';

  static const getTopicsByChapterId = 'flutternew/index.php?mobile/get_topics';

  static const getVideoTopicsByVideoId =
      'flutternew/index.php?mobile/get_video_topics_by_video';
}

enum HomeItemType {
  lectureVideos,
  ncertTextbooks,
  prevYearQuestions,
}
