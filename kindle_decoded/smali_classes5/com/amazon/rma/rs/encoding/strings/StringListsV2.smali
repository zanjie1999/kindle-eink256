.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV2;
.super Ljava/lang/Object;
.source "StringListsV2.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xe4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Book"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Book:Reading"

    aput-object v3, v1, v2

    const-string v2, "Book:Reading:Text"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string v4, "Book:Reading:Highlight"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "Book:Reading:Note"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "Book:Reading:Chapter"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "Book:Reading:PHL"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "Book:Reading:Selection"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "Book:Reading:Selection:More"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "Book:Reading:Selection:SmartLookup:Dictionary"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "Book:Reading:Selection:SmartLookup:Dictionary:DownloadDictionary"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "Book:Reading:Selection:SmartLookup:Dictionary:DownloadDictionaryProgressBarAnimation"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "Book:Reading:Selection:SmartLookup:Dictionary:ChangeDictionary"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "Book:Reading:Selection:SmartLookup:Dictionary:FullDictionary"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "Book:Reading:Selection:SmartLookup:Xray"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "Book:NoteView"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "Book:NoteView:Note:Edit"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "Book:NoteView:Filter"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "Book:Search"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "Book:Search:ScopeList"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v4, "Book:Xray"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string v4, "Book:Xray:Sort"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string v4, "Book:Xray:DetailedDescription"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v4, "Book:SideBar"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string v4, "Book:SideBar:Library"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v4, "Book:SideBar:Cover"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v4, "Book:SideBar:TableOfContents"

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string v4, "Book:SideBar:Beginning"

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-string v4, "Book:SideBar:Location"

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v4, "Book:SideBar:PopularHighlights"

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-string v4, "Book:SideBar:BookExtras"

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-string v4, "Book:SideBar:XRay"

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string v4, "Book:SideBar:BeforeYouGo"

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string v4, "Book:BeforeYouGo"

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string v4, "Book:BeforeYouGo:ReviewThisBook"

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v4, "Book:BeforeYouGo:Recommendation"

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v4, "Book:Settings"

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-string v4, "Book:Cover"

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-string v4, "Book:TableOfContents"

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-string v4, "Book:BookExtras"

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v4, "Book:PopularHighlights"

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v4, "Book:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string v4, "Book:Chrome:Xray"

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v4, "Home"

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string v4, "Home:AllItemsLibrary"

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-string v4, "Home:BookLibrary"

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    const-string v4, "Home:BookLibrary:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string v4, "Home:BookLibrary:Chrome:FilesOnCloud"

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-string v4, "Home:BookLibrary:Chrome:FilesOnDevice"

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v4, "Home:NewsstandLibrary"

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-string v4, "Home:NewsstandLibrary:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v4, "Home:NewsstandLibrary:Chrome:FilesOnCloud"

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-string v4, "Home:NewsstandLibrary:Chrome:FilesOnDevice"

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string v4, "Home:DocsLibrary"

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-string v4, "Home:DocsLibrary:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string v4, "Home:DocsLibrary:Chrome:FilesOnCloud"

    aput-object v4, v1, v2

    const/16 v2, 0x38

    const-string v4, "Home:DocsLibrary:Chrome:FilesOnDevice"

    aput-object v4, v1, v2

    const-string v2, "Home:CollectionView"

    const/16 v4, 0x39

    aput-object v2, v1, v4

    const/16 v4, 0x3a

    aput-object v2, v1, v4

    const/16 v2, 0x3b

    const-string v4, "Home:CollectionView:AddToCollection"

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    const-string v4, "Home:CollectionView:EditItemsInCollection"

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    const-string v4, "Home:CollectionView:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v4, "Home:AudioLibrary"

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    const-string v4, "Home:Settings"

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-string v4, "Home:Settings:Registration"

    aput-object v4, v1, v2

    const/16 v2, 0x41

    const-string v4, "Home:Settings:Registration:Login"

    aput-object v4, v1, v2

    const/16 v2, 0x42

    const-string v4, "Home:Settings:FrequentlyAskedQuestion"

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-string v4, "Home:Settings:ContactUs"

    aput-object v4, v1, v2

    const/16 v2, 0x44

    const-string v4, "Home:Settings:SocialNetworkLink"

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-string v4, "Home:Settings:Other"

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-string v4, "Home:Settings:Other:About"

    aput-object v4, v1, v2

    const/16 v2, 0x47

    const-string v4, "Home:Settings:Other:TermsAndPolicyView"

    aput-object v4, v1, v2

    const/16 v2, 0x48

    const-string v4, "Home:Settings:Other:Legal"

    aput-object v4, v1, v2

    const/16 v2, 0x49

    const-string v4, "Home:Search"

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    const-string v4, "Home:SideBar"

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    const-string v4, "Login"

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    const-string v4, "Login:HelpScreen"

    aput-object v4, v1, v2

    const/16 v2, 0x4d

    const-string v4, "Login:TermsAndPolicyView"

    aput-object v4, v1, v2

    const/16 v2, 0x4e

    const-string v4, "Newsstand"

    aput-object v4, v1, v2

    const/16 v2, 0x4f

    const-string v4, "Newsstand:Reading"

    aput-object v4, v1, v2

    const/16 v2, 0x50

    const-string v4, "Newsstand:Reading:ContentConvertedToTextView"

    aput-object v4, v1, v2

    const/16 v2, 0x51

    const-string v4, "Newsstand:Reading:ContentConvertedToTextView:Selection:SmartLookup:Dictionary"

    aput-object v4, v1, v2

    const/16 v2, 0x52

    const-string v4, "Newsstand:Reading:ContentConvertedToTextView:Selection:SmartLookup:Dictionary:DownloadDictionary"

    aput-object v4, v1, v2

    const/16 v2, 0x53

    const-string v4, "Newsstand:Reading:ContentConvertedToTextView:Selection:SmartLookup:Dictionary:DownloadDictionaryProgressBarAnimation"

    aput-object v4, v1, v2

    const/16 v2, 0x54

    const-string v4, "Newsstand:Reading:ContentConvertedToTextView:Selection:SmartLookup:Dictionary:ChangeDictionary"

    aput-object v4, v1, v2

    const/16 v2, 0x55

    const-string v4, "Newsstand:ArticleList"

    aput-object v4, v1, v2

    const/16 v2, 0x56

    const-string v4, "Newsstand:ArticleList:search"

    aput-object v4, v1, v2

    const/16 v2, 0x57

    const-string v4, "Newsstand:ArticleList:Search:ScopeList"

    aput-object v4, v1, v2

    const/16 v2, 0x58

    const-string v4, "Newsstand:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x59

    const-string v4, "Newsstand:Sections"

    aput-object v4, v1, v2

    const/16 v2, 0x5a

    const-string v4, "Docs"

    aput-object v4, v1, v2

    const/16 v2, 0x5b

    const-string v4, "Docs:Reading"

    aput-object v4, v1, v2

    const/16 v2, 0x5c

    const-string v4, "Docs:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x5d

    const-string v4, "Docs:SideBar"

    aput-object v4, v1, v2

    const/16 v2, 0x5e

    const-string v4, "Docs:NoteView"

    aput-object v4, v1, v2

    const/16 v2, 0x5f

    const-string v4, "Docs:NoteView:Filter"

    aput-object v4, v1, v2

    const/16 v2, 0x60

    const-string v4, "Settings"

    aput-object v4, v1, v2

    const/16 v2, 0x61

    const-string v4, "Settings:AnnotationsSync&Backup"

    aput-object v4, v1, v2

    const/16 v2, 0x62

    const-string v4, "Settings:PopularHighlights"

    aput-object v4, v1, v2

    const/16 v2, 0x63

    const-string v4, "Settings:PageFooter"

    aput-object v4, v1, v2

    const/16 v2, 0x64

    const-string v4, "Settings:WiFiOnlyAudioDownloads"

    aput-object v4, v1, v2

    const/16 v2, 0x65

    const-string v4, "Settings:Brightness"

    aput-object v4, v1, v2

    const/16 v2, 0x66

    const-string v4, "Settings:Font"

    aput-object v4, v1, v2

    const/16 v2, 0x67

    const-string v4, "Settings:FontSize"

    aput-object v4, v1, v2

    const/16 v2, 0x68

    const-string v4, "Settings:ColorSchema"

    aput-object v4, v1, v2

    const/16 v2, 0x69

    const-string v4, "Settings:LineSpacing"

    aput-object v4, v1, v2

    const/16 v2, 0x6a

    const-string v4, "Settings:Margin"

    aput-object v4, v1, v2

    const/16 v2, 0x6b

    const-string v4, "Settings:Column"

    aput-object v4, v1, v2

    const/16 v2, 0x6c

    const-string v4, "Settings:PageTurnAnimation"

    aput-object v4, v1, v2

    const/16 v2, 0x6d

    const-string v4, "Settings:FacebookLinked"

    aput-object v4, v1, v2

    const/16 v2, 0x6e

    const-string v4, "Settings:TwitterLinked"

    aput-object v4, v1, v2

    const/16 v2, 0x6f

    const-string v4, "Settings:Dictionary"

    aput-object v4, v1, v2

    const/16 v2, 0x70

    const-string v4, "Settings:Volume"

    aput-object v4, v1, v2

    const/16 v2, 0x71

    const-string v4, "Settings:SleepTimer"

    aput-object v4, v1, v2

    const/16 v2, 0x72

    const-string v4, "Settings:Airplay"

    aput-object v4, v1, v2

    const/16 v2, 0x73

    const-string v4, "Settings:NarrationSpeed"

    aput-object v4, v1, v2

    const/16 v2, 0x74

    const-string v4, "Global"

    aput-object v4, v1, v2

    const/16 v2, 0x75

    const-string v4, "Global:Homescreen"

    aput-object v4, v1, v2

    const/16 v2, 0x76

    const-string v4, "Global:Sleep"

    aput-object v4, v1, v2

    const/16 v2, 0x77

    const-string v4, "Global:TurnOffDevice"

    aput-object v4, v1, v2

    const/16 v2, 0x78

    const-string v4, "Audio"

    aput-object v4, v1, v2

    const/16 v2, 0x79

    const-string v4, "Audio:Listening"

    aput-object v4, v1, v2

    const/16 v2, 0x7a

    const-string v4, "Audio:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x7b

    const-string v4, "Audio:TableOfContents"

    aput-object v4, v1, v2

    const/16 v2, 0x7c

    const-string v4, "Audio:SideBar"

    aput-object v4, v1, v2

    const/16 v2, 0x7d

    const-string v4, "ReadingProgressString"

    aput-object v4, v1, v2

    const/16 v2, 0x7e

    const-string v4, "OpenHyperLink"

    aput-object v4, v1, v2

    const/16 v2, 0x7f

    const-string v4, "ChangeToChineseToEnglish"

    aput-object v4, v1, v2

    const-string v2, "ChangeToDeutsch"

    const/16 v4, 0x80

    aput-object v2, v1, v4

    const-string v4, "ChangeToEnglishUK"

    const/16 v5, 0x81

    aput-object v4, v1, v5

    const-string v5, "ChangeToEnligshUS"

    const/16 v6, 0x82

    aput-object v5, v1, v6

    const-string v6, "ChangeToSpanish"

    const/16 v7, 0x83

    aput-object v6, v1, v7

    const-string v7, "ChangeToFrench"

    const/16 v8, 0x84

    aput-object v7, v1, v8

    const-string v8, "ChangeToItalian"

    const/16 v9, 0x85

    aput-object v8, v1, v9

    const-string v9, "ChangeToPortuguese"

    const/16 v10, 0x86

    aput-object v9, v1, v10

    const-string v10, "ChangeToChinese"

    const/16 v11, 0x87

    aput-object v10, v1, v11

    const-string v11, "ChangeToJapanese"

    const/16 v12, 0x88

    aput-object v11, v1, v12

    const-string v12, "ChangeToEnglishToJapanese"

    const/16 v13, 0x89

    aput-object v12, v1, v13

    const-string v13, "ChangeToEnglishToChinese"

    const/16 v14, 0x8a

    aput-object v13, v1, v14

    const/16 v14, 0x8b

    const-string v15, "FocusOnOneItem"

    aput-object v15, v1, v14

    const/16 v14, 0x8c

    const-string v15, "EditNote"

    aput-object v15, v1, v14

    const/16 v14, 0x8d

    const-string v15, "SaveNote"

    aput-object v15, v1, v14

    const/16 v14, 0x8e

    const-string v15, "ShowListByTerms"

    aput-object v15, v1, v14

    const/16 v14, 0x8f

    const-string v15, "ShowListByPeople"

    aput-object v15, v1, v14

    const/16 v14, 0x90

    const-string v15, "ShowListByAll"

    aput-object v15, v1, v14

    const/16 v14, 0x91

    const-string v15, "SortByAlphabetical"

    aput-object v15, v1, v14

    const/16 v14, 0x92

    const-string v15, "SortByOrderOfApperance"

    aput-object v15, v1, v14

    const-string v14, "SyncLPR"

    const/16 v15, 0x93

    aput-object v14, v1, v15

    const/16 v15, 0x94

    const-string v16, "GoBackToPreviousLocation"

    aput-object v16, v1, v15

    const/16 v15, 0x95

    const-string v16, "ReviewPHLDetails"

    aput-object v16, v1, v15

    const/16 v15, 0x96

    const-string v16, "ShowSpoilers"

    aput-object v16, v1, v15

    const/16 v15, 0x97

    const-string v16, "ReportAbuse"

    aput-object v16, v1, v15

    const/16 v15, 0x98

    const-string v16, "ReviewExtrasDetails"

    aput-object v16, v1, v15

    const/16 v15, 0x99

    const-string v16, "ShareOnFacebook"

    aput-object v16, v1, v15

    const/16 v15, 0x9a

    const-string v16, "ShareOnTwitter"

    aput-object v16, v1, v15

    const/16 v15, 0x9b

    const-string v16, "StarRating"

    aput-object v16, v1, v15

    const/16 v15, 0x9c

    const-string v16, "EditReview"

    aput-object v16, v1, v15

    const/16 v15, 0x9d

    const-string v16, "SearchForBook"

    aput-object v16, v1, v15

    const/16 v15, 0x9e

    const-string v16, "DownloadASample"

    aput-object v16, v1, v15

    const/16 v15, 0x9f

    const-string v16, "DeletePermanently"

    aput-object v16, v1, v15

    const/16 v15, 0xa0

    const-string v16, "SortByIssueData"

    aput-object v16, v1, v15

    const/16 v15, 0xa1

    const-string v16, "KeepThisIssue"

    aput-object v16, v1, v15

    const/16 v15, 0xa2

    const-string v16, "DontKeepThisIssue"

    aput-object v16, v1, v15

    const/16 v15, 0xa3

    const-string v16, "SortByTitle"

    aput-object v16, v1, v15

    const/16 v15, 0xa4

    const-string v16, "SortByAuthor"

    aput-object v16, v1, v15

    const/16 v15, 0xa5

    const-string v16, "ToggleGridList"

    aput-object v16, v1, v15

    const/16 v15, 0xa6

    const-string v16, "DownloadAItem"

    aput-object v16, v1, v15

    const/16 v15, 0xa7

    const-string v16, "AddToCollection"

    aput-object v16, v1, v15

    const/16 v15, 0xa8

    const-string v16, "RemoveFromDevice"

    aput-object v16, v1, v15

    const/16 v15, 0xa9

    const-string v16, "DownloadAllItems"

    aput-object v16, v1, v15

    const/16 v15, 0xaa

    const-string v16, "DeleteOneItem"

    aput-object v16, v1, v15

    const/16 v15, 0xab

    const-string v16, "RearrangeItem"

    aput-object v16, v1, v15

    const/16 v15, 0xac

    const-string v16, "AddItemsToCollection"

    aput-object v16, v1, v15

    const/16 v15, 0xad

    const-string v16, "SortByRecent"

    aput-object v16, v1, v15

    const/16 v15, 0xae

    const-string v16, "SortByCollectionName"

    aput-object v16, v1, v15

    const/16 v15, 0xaf

    const-string v16, "Sync"

    aput-object v16, v1, v15

    const/16 v15, 0xb0

    const-string v16, "DeregisterThisKindle"

    aput-object v16, v1, v15

    const/16 v15, 0xb1

    const-string v16, "SendQuestions"

    aput-object v16, v1, v15

    const/16 v15, 0xb2

    const-string v16, "LinkFacebookWebView"

    aput-object v16, v1, v15

    const/16 v15, 0xb3

    const-string v16, "LinkTwitterWebView"

    aput-object v16, v1, v15

    const/16 v15, 0xb4

    const-string v16, "SignIn"

    aput-object v16, v1, v15

    const/16 v15, 0xb5

    const-string v16, "SetContentView"

    aput-object v16, v1, v15

    const/16 v15, 0xb6

    const-string v16, "SetContentConvertedToTextView"

    aput-object v16, v1, v15

    const/16 v15, 0xb7

    const-string v16, "DownloadDictionary"

    aput-object v16, v1, v15

    const/16 v15, 0xb8

    const-string v16, "CancelDownloadDictionary"

    aput-object v16, v1, v15

    const/16 v15, 0xb9

    const-string v16, "ChangeToChineseEnglish"

    aput-object v16, v1, v15

    const/16 v15, 0xba

    aput-object v2, v1, v15

    const/16 v2, 0xbb

    aput-object v4, v1, v2

    const/16 v2, 0xbc

    aput-object v5, v1, v2

    const/16 v2, 0xbd

    aput-object v6, v1, v2

    const/16 v2, 0xbe

    aput-object v7, v1, v2

    const/16 v2, 0xbf

    aput-object v8, v1, v2

    const/16 v2, 0xc0

    aput-object v9, v1, v2

    const/16 v2, 0xc1

    aput-object v10, v1, v2

    const/16 v2, 0xc2

    aput-object v11, v1, v2

    const/16 v2, 0xc3

    aput-object v12, v1, v2

    const/16 v2, 0xc4

    aput-object v13, v1, v2

    const/16 v2, 0xc5

    const-string v4, "SearchWikipedia"

    aput-object v4, v1, v2

    const/16 v2, 0xc6

    const-string v4, "SearchGoogle"

    aput-object v4, v1, v2

    const-string v2, "ProgressBarAdjust"

    const/16 v4, 0xc7

    aput-object v2, v1, v4

    const/16 v4, 0xc8

    aput-object v14, v1, v4

    const/16 v4, 0xc9

    const-string v5, "Print"

    aput-object v5, v1, v4

    const/16 v4, 0xca

    const-string v5, "ChangeBrightness"

    aput-object v5, v1, v4

    const/16 v4, 0xcb

    const-string v5, "GoToEnteredLocation"

    aput-object v5, v1, v4

    const/16 v4, 0xcc

    const-string v5, "DeleteNote"

    aput-object v5, v1, v4

    const/16 v4, 0xcd

    const-string v5, "FavoriteItem"

    aput-object v5, v1, v4

    const/16 v4, 0xce

    const-string v5, "FilterAll"

    aput-object v5, v1, v4

    const/16 v4, 0xcf

    const-string v5, "FilterStarred"

    aput-object v5, v1, v4

    const/16 v4, 0xd0

    const-string v5, "FilterBookmarks"

    aput-object v5, v1, v4

    const/16 v4, 0xd1

    const-string v5, "FilterNotes"

    aput-object v5, v1, v4

    const/16 v4, 0xd2

    const-string v5, "FilterAllHighlights"

    aput-object v5, v1, v4

    const/16 v4, 0xd3

    const-string v5, "FilterPinkHighlight"

    aput-object v5, v1, v4

    const/16 v4, 0xd4

    const-string v5, "FilterOrangehighlight"

    aput-object v5, v1, v4

    const/16 v4, 0xd5

    const-string v5, "FilterYellowhighlight"

    aput-object v5, v1, v4

    const/16 v4, 0xd6

    const-string v5, "FilterBluehighlight"

    aput-object v5, v1, v4

    const/16 v4, 0xd7

    const-string v5, "Play"

    aput-object v5, v1, v4

    const/16 v4, 0xd8

    const-string v5, "Pause"

    aput-object v5, v1, v4

    const/16 v4, 0xd9

    const-string v5, "FastForward"

    aput-object v5, v1, v4

    const/16 v4, 0xda

    const-string v5, "FastBackward"

    aput-object v5, v1, v4

    const/16 v4, 0xdb

    const-string v5, "ForwardThirtySec"

    aput-object v5, v1, v4

    const/16 v4, 0xdc

    const-string v5, "BackwarkThirtySec"

    aput-object v5, v1, v4

    const/16 v4, 0xdd

    aput-object v2, v1, v4

    const/16 v2, 0xde

    const-string/jumbo v4, "setVolume"

    aput-object v4, v1, v2

    const/16 v2, 0xdf

    const-string/jumbo v4, "setSleepTimer"

    aput-object v4, v1, v2

    const/16 v2, 0xe0

    const-string/jumbo v4, "setAirplayDisplay"

    aput-object v4, v1, v2

    const/16 v2, 0xe1

    const-string/jumbo v4, "setNarrationSpeed"

    aput-object v4, v1, v2

    const/16 v2, 0xe2

    const-string v4, "BookmarkThisPage"

    aput-object v4, v1, v2

    const/16 v2, 0xe3

    const-string v4, "GoToItemLocation"

    aput-object v4, v1, v2

    const-string v2, "context"

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v1, v3, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV2;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
