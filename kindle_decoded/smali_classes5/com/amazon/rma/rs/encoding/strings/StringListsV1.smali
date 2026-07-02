.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV1;
.super Ljava/lang/Object;
.source "StringListsV1.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10d

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Global:Back"

    aput-object v3, v1, v2

    const-string v2, "Global:Brightness"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "Global:DeviceKeyboard"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "Global:DeviceLocale"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "Global:Display:Brightness"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "Global:Display:Orientation"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "Global:Keyboard"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "Global:Keyboard:Letters"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "Global:Keyboard:Numbers"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "Global:Keyboard:Symbols"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "Global:LocalTimeOffset"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "Global:ScreenSaver:Timeout"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "Global:Search"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "Global:Search:ScopeList"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "Global:Sleep"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "Global:WifiNetworks"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "Global:Wireless:AirplaneMode"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "Global:Wireless:State"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "Book:AboutTheAuthor"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "Book:AddEditNote"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string v4, "Book:Chrome"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string v4, "Book:Chrome:Menu"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string v4, "Book:EndActions"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v4, "Book:Fonts"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string v4, "Book:Goto"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string v4, "Book:Goto:Contents"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v4, "Book:Goto:Contents:PageLocation"

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string v4, "Book:Goto:Notes"

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-string v4, "Book:Goto:Notes:Popular"

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-string v4, "Book:Goto:Notes:Popular:PHL"

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-string v4, "Book:Goto:Notes:Public"

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-string v4, "Book:Goto:Notes:Public:Highlight"

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-string v4, "Book:Goto:Notes:Public:Note"

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string v4, "Book:Goto:Notes:Yours"

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-string v4, "Book:Goto:Notes:Yours:Highlight"

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-string v4, "Book:Goto:Notes:Yours:Note"

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-string v4, "Book:Reading:AboutTheAuthor"

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-string v4, "Book:Reading:Annotations"

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-string v4, "Book:Reading:Bookmarks"

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-string v4, "Book:Reading:Bookmarks:Preview"

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v4, "Book:Reading:EndActions"

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v4, "Book:Reading:MainContent"

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-string v4, "Book:Reading:MainContent:Bookmark"

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v4, "Book:Reading:MainContent:Chapter:End"

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string v4, "Book:Reading:MainContent:Chapter:Start"

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-string v4, "Book:Reading:MainContent:Highlight"

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    const-string v4, "Book:Reading:MainContent:Note"

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string v4, "Book:Reading:MainContent:PHL"

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-string v4, "Book:Reading:MainContent:PublicHighlight"

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-string v4, "Book:Reading:MainContent:PublicNote"

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-string v4, "Book:Reading:MainContent:Selection"

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v4, "Book:Reading:MainContent:Selection:QuickSelect"

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-string v4, "Book:Reading:MainContent:Selection:QuickSelect:More"

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-string v4, "Book:Reading:MainContent:Selection:SmartLookup:Dictionary"

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-string v4, "Book:Reading:MainContent:Selection:SmartLookup:Dictionary:ChangeDictionary"

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string v4, "Book:Reading:MainContent:Selection:SmartLookup:More"

    aput-object v4, v1, v2

    const/16 v2, 0x38

    const-string v4, "Book:Reading:MainContent:Selection:SmartLookup:Wikipedia"

    aput-object v4, v1, v2

    const/16 v2, 0x39

    const-string v4, "Book:Reading:MainContent:Selection:SmartLookup:XRay"

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-string v4, "Book:Reading:MainContent:Text"

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string v4, "Book:Reading:NoteView"

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    const-string v4, "Book:Reading:NoteView:More"

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    const-string v4, "Book:Reading:PHLs"

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v4, "Book:Reading:PageNumbers"

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    const-string v4, "Book:Reading:PublicNotes"

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-string v4, "Book:Reading:StartActions"

    aput-object v4, v1, v2

    const/16 v2, 0x41

    const-string v4, "Book:Reading:SyncToFurthest"

    aput-object v4, v1, v2

    const/16 v2, 0x42

    const-string v4, "Book:Reading:XRay"

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-string v4, "Book:ReadingProgress"

    aput-object v4, v1, v2

    const/16 v2, 0x44

    const-string v4, "Book:ReportContentError"

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-string v4, "Book:Scrubber"

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-string v4, "Book:Scrubber:Preview"

    aput-object v4, v1, v2

    const/16 v2, 0x47

    const-string v4, "Book:Search:ScopeList"

    aput-object v4, v1, v2

    const/16 v2, 0x48

    const-string v4, "Book:Settings:FontFace"

    aput-object v4, v1, v2

    const/16 v2, 0x49

    const-string v4, "Book:Settings:FontSize"

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    const-string v4, "Book:Settings:LineSpacing"

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    const-string v4, "Book:Settings:Margins"

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    const-string v4, "Book:Settings:ReadingProgress"

    aput-object v4, v1, v2

    const/16 v2, 0x4d

    const-string v4, "Book:Share:Passage"

    aput-object v4, v1, v2

    const/16 v2, 0x4e

    const-string v4, "Book:Share:Progress"

    aput-object v4, v1, v2

    const/16 v2, 0x4f

    const-string v4, "Book:StartActions"

    aput-object v4, v1, v2

    const/16 v2, 0x50

    const-string v4, "Book:SyncToFurthest"

    aput-object v4, v1, v2

    const/16 v2, 0x51

    const-string v4, "Book:Translation"

    aput-object v4, v1, v2

    const/16 v2, 0x52

    const-string v4, "Book:Translation:About"

    aput-object v4, v1, v2

    const/16 v2, 0x53

    const-string v4, "Book:Translation:FromLanguage"

    aput-object v4, v1, v2

    const/16 v2, 0x54

    const-string v4, "Book:Translation:ToLanguage"

    aput-object v4, v1, v2

    const/16 v2, 0x55

    const-string v4, "Book:Wikipedia"

    aput-object v4, v1, v2

    const/16 v2, 0x56

    const-string v4, "Book:XRay"

    aput-object v4, v1, v2

    const/16 v2, 0x57

    const-string v4, "Grok"

    aput-object v4, v1, v2

    const/16 v2, 0x58

    const-string v4, "Grok:IsActive"

    aput-object v4, v1, v2

    const/16 v2, 0x59

    const-string v4, "Home"

    aput-object v4, v1, v2

    const/16 v2, 0x5a

    const-string v4, "Home:BookDetails"

    aput-object v4, v1, v2

    const/16 v2, 0x5b

    const-string v4, "Home:Cloud"

    aput-object v4, v1, v2

    const/16 v2, 0x5c

    const-string v4, "Home:Cloud:Filter"

    aput-object v4, v1, v2

    const/16 v2, 0x5d

    const-string v4, "Home:Cloud:Sort"

    aput-object v4, v1, v2

    const/16 v2, 0x5e

    const-string v4, "Home:Collections"

    aput-object v4, v1, v2

    const/16 v2, 0x5f

    const-string v4, "Home:Collections:AddTo"

    aput-object v4, v1, v2

    const/16 v2, 0x60

    const-string v4, "Home:CreateCollection"

    aput-object v4, v1, v2

    const/16 v2, 0x61

    const-string v4, "Home:FreeTime:UpdateLibrary"

    aput-object v4, v1, v2

    const/16 v2, 0x62

    const-string v4, "Home:ItemFilter"

    aput-object v4, v1, v2

    const/16 v2, 0x63

    const-string v4, "Home:ItemSort"

    aput-object v4, v1, v2

    const/16 v2, 0x64

    const-string v4, "Home:Menu"

    aput-object v4, v1, v2

    const/16 v2, 0x65

    const-string v4, "Home:OnDevice"

    aput-object v4, v1, v2

    const/16 v2, 0x66

    const-string v4, "Home:OnDevice:Filter"

    aput-object v4, v1, v2

    const/16 v2, 0x67

    const-string v4, "Home:OnDevice:Sort"

    aput-object v4, v1, v2

    const/16 v2, 0x68

    const-string v4, "Home:Search:All"

    aput-object v4, v1, v2

    const/16 v2, 0x69

    const-string v4, "Home:Search:Book"

    aput-object v4, v1, v2

    const/16 v2, 0x6a

    const-string v4, "Home:View"

    aput-object v4, v1, v2

    const/16 v2, 0x6b

    const-string v4, "Browser"

    aput-object v4, v1, v2

    const/16 v2, 0x6c

    const-string v4, "KindleFreeTime"

    aput-object v4, v1, v2

    const/16 v2, 0x6d

    const-string v4, "Newsstand"

    aput-object v4, v1, v2

    const/16 v2, 0x6e

    const-string v4, "Search"

    aput-object v4, v1, v2

    const/16 v2, 0x6f

    const-string v4, "Search:Scope"

    aput-object v4, v1, v2

    const/16 v2, 0x70

    const-string v4, "Store"

    aput-object v4, v1, v2

    const/16 v2, 0x71

    const-string v4, "Store:Book"

    aput-object v4, v1, v2

    const/16 v2, 0x72

    const-string v4, "Store:BookDescription"

    aput-object v4, v1, v2

    const/16 v2, 0x73

    const-string v4, "Store:Search"

    aput-object v4, v1, v2

    const/16 v2, 0x74

    const-string v4, "Sync"

    aput-object v4, v1, v2

    const/16 v2, 0x75

    const-string v4, "SyncAndCheckForItems"

    aput-object v4, v1, v2

    const/16 v2, 0x76

    const-string v4, "VocabBuilder"

    aput-object v4, v1, v2

    const/16 v2, 0x77

    const-string v4, "Settings"

    aput-object v4, v1, v2

    const/16 v2, 0x78

    const-string v4, "Settings:Menu"

    aput-object v4, v1, v2

    const/16 v2, 0x79

    const-string v4, "Settings:DeviceOptions"

    aput-object v4, v1, v2

    const/16 v2, 0x7a

    const-string v4, "Settings:ReadingOptions"

    aput-object v4, v1, v2

    const/16 v2, 0x7b

    const-string v4, "Settings:AnnoBackup"

    aput-object v4, v1, v2

    const/16 v2, 0x7c

    const-string v4, "Settings:Deregister"

    aput-object v4, v1, v2

    const/16 v2, 0x7d

    const-string v4, "Settings:DeviceInfo"

    aput-object v4, v1, v2

    const/16 v2, 0x7e

    const-string v4, "Settings:DeviceOptions:LangDict"

    aput-object v4, v1, v2

    const/16 v2, 0x7f

    const-string v4, "Settings:DeviceOptions:LangDict:Dictionary"

    aput-object v4, v1, v2

    const/16 v2, 0x80

    const-string v4, "Settings:DeviceOptions:LangDict:Keyboard"

    aput-object v4, v1, v2

    const/16 v2, 0x81

    const-string v4, "Settings:DeviceOptions:LangDict:Language"

    aput-object v4, v1, v2

    const/16 v2, 0x82

    const-string v4, "Settings:DeviceOptions:ParentalControls"

    aput-object v4, v1, v2

    const/16 v2, 0x83

    const-string v4, "Settings:DeviceOptions:ParentalControls:Password"

    aput-object v4, v1, v2

    const/16 v2, 0x84

    const-string v4, "Settings:DeviceOptions:ParentalControls:Restrictions"

    aput-object v4, v1, v2

    const/16 v2, 0x85

    const-string v4, "Settings:DeviceOptions:Passcode"

    aput-object v4, v1, v2

    const/16 v2, 0x86

    const-string v4, "Settings:DeviceOptions:Personalize"

    aput-object v4, v1, v2

    const/16 v2, 0x87

    const-string v4, "Settings:DeviceOptions:Personalize:DeviceName"

    aput-object v4, v1, v2

    const/16 v2, 0x88

    const-string v4, "Settings:DeviceOptions:Personalize:DeviceTime"

    aput-object v4, v1, v2

    const/16 v2, 0x89

    const-string v4, "Settings:DeviceOptions:Personalize:PersonalInfo"

    aput-object v4, v1, v2

    const/16 v2, 0x8a

    const-string v4, "Settings:DevicePasscode"

    aput-object v4, v1, v2

    const/16 v2, 0x8b

    const-string v4, "Settings:FreeTime:ChildProfile"

    aput-object v4, v1, v2

    const/16 v2, 0x8c

    const-string v4, "Settings:Legal"

    aput-object v4, v1, v2

    const/16 v2, 0x8d

    const-string v4, "Settings:ManageSocial"

    aput-object v4, v1, v2

    const/16 v2, 0x8e

    const-string v4, "Settings:PHLs"

    aput-object v4, v1, v2

    const/16 v2, 0x8f

    const-string v4, "Settings:PageRefresh"

    aput-object v4, v1, v2

    const/16 v2, 0x90

    const-string v4, "Settings:ParentalControls:Browser"

    aput-object v4, v1, v2

    const/16 v2, 0x91

    const-string v4, "Settings:ParentalControls:Cloud"

    aput-object v4, v1, v2

    const/16 v2, 0x92

    const-string v4, "Settings:ParentalControls:Grok"

    aput-object v4, v1, v2

    const/16 v2, 0x93

    const-string v4, "Settings:ParentalControls:Store"

    aput-object v4, v1, v2

    const/16 v2, 0x94

    const-string v4, "Settings:PublicNotes"

    aput-object v4, v1, v2

    const/16 v2, 0x95

    const-string v4, "Settings:ReadingOptions:Annotations"

    aput-object v4, v1, v2

    const/16 v2, 0x96

    const-string v4, "Settings:RecommendedContent"

    aput-object v4, v1, v2

    const/16 v2, 0x97

    const-string v4, "Settings:Registration"

    aput-object v4, v1, v2

    const/16 v2, 0x98

    const-string v4, "Settings:ResetDevice"

    aput-object v4, v1, v2

    const/16 v2, 0x99

    const-string v4, "Settings:VocabBuilder"

    aput-object v4, v1, v2

    const/16 v2, 0x9a

    const-string v4, "Helvetica"

    aput-object v4, v1, v2

    const/16 v2, 0x9b

    const-string v4, "ActiveContent"

    aput-object v4, v1, v2

    const/16 v2, 0x9c

    const-string v4, "AddHighlight"

    aput-object v4, v1, v2

    const/16 v2, 0x9d

    const-string v4, "AdjustedSelection"

    aput-object v4, v1, v2

    const/16 v2, 0x9e

    const-string v4, "AirplaneModeToggle"

    aput-object v4, v1, v2

    const/16 v2, 0x9f

    const-string v4, "AllItems"

    aput-object v4, v1, v2

    const/16 v2, 0xa0

    const-string v4, "AllText"

    aput-object v4, v1, v2

    const/16 v2, 0xa1

    const-string v4, "Author"

    aput-object v4, v1, v2

    const/16 v2, 0xa2

    const-string v4, "Baskerville"

    aput-object v4, v1, v2

    const/16 v2, 0xa3

    const-string v4, "BiblioClick"

    aput-object v4, v1, v2

    const/16 v2, 0xa4

    const-string v4, "Books"

    aput-object v4, v1, v2

    const/16 v2, 0xa5

    const-string v4, "Caecilia"

    aput-object v4, v1, v2

    const/16 v2, 0xa6

    const-string v4, "CaeciliaCondensed"

    aput-object v4, v1, v2

    const/16 v2, 0xa7

    const-string v4, "ClickRec"

    aput-object v4, v1, v2

    const/16 v2, 0xa8

    const-string v4, "Collection"

    aput-object v4, v1, v2

    const/16 v2, 0xa9

    const-string v4, "Collections"

    aput-object v4, v1, v2

    const/16 v2, 0xaa

    const-string v4, "Cover"

    aput-object v4, v1, v2

    const/16 v2, 0xab

    const-string v4, "Create"

    aput-object v4, v1, v2

    const/16 v2, 0xac

    const-string v4, "CreateBookmark"

    aput-object v4, v1, v2

    const/16 v2, 0xad

    const-string v4, "CycleReadingProgressSetting"

    aput-object v4, v1, v2

    const/16 v2, 0xae

    const-string v4, "DeleteBookmark"

    aput-object v4, v1, v2

    const-string v2, "DeleteHighlight"

    const/16 v4, 0xaf

    aput-object v2, v1, v4

    const-string v4, "DeleteNote"

    const/16 v5, 0xb0

    aput-object v4, v1, v5

    const/16 v5, 0xb1

    const-string v6, "DeleteRating"

    aput-object v6, v1, v5

    const/16 v5, 0xb2

    const-string v6, "Deregister"

    aput-object v6, v1, v5

    const/16 v5, 0xb3

    const-string v6, "Dictionary"

    aput-object v6, v1, v5

    const/16 v5, 0xb4

    const-string v6, "DictionaryChanged"

    aput-object v6, v1, v5

    const/16 v5, 0xb5

    const-string v6, "Docs"

    aput-object v6, v1, v5

    const/16 v5, 0xb6

    const-string v6, "Download"

    aput-object v6, v1, v5

    const/16 v5, 0xb7

    const-string v6, "Drag"

    aput-object v6, v1, v5

    const/16 v5, 0xb8

    const-string v6, "EditNote"

    aput-object v6, v1, v5

    const/16 v5, 0xb9

    const-string v6, "ExitFreeTime"

    aput-object v6, v1, v5

    const/16 v5, 0xba

    const-string v6, "FollowedInternalLink"

    aput-object v6, v1, v5

    const/16 v5, 0xbb

    const-string v6, "FollowedLink"

    aput-object v6, v1, v5

    const/16 v5, 0xbc

    const-string v6, "FoundLookup"

    aput-object v6, v1, v5

    const/16 v5, 0xbd

    const-string v6, "Futura"

    aput-object v6, v1, v5

    const/16 v5, 0xbe

    const-string v6, "Goto"

    aput-object v6, v1, v5

    const/16 v5, 0xbf

    const-string v6, "GotoBookmark"

    aput-object v6, v1, v5

    const/16 v5, 0xc0

    const-string v6, "GotoFurthest"

    aput-object v6, v1, v5

    const/16 v5, 0xc1

    const-string v6, "GotoLocation"

    aput-object v6, v1, v5

    const/16 v5, 0xc2

    const-string v6, "GotoPage"

    aput-object v6, v1, v5

    const/16 v5, 0xc3

    const-string v6, "InitialSelection"

    aput-object v6, v1, v5

    const/16 v5, 0xc4

    const-string v6, "Landscape"

    aput-object v6, v1, v5

    const/16 v5, 0xc5

    const-string v6, "LandscapePortraitToggle"

    aput-object v6, v1, v5

    const/16 v5, 0xc6

    const-string v6, "Large"

    aput-object v6, v1, v5

    const/16 v5, 0xc7

    const-string v6, "List"

    aput-object v6, v1, v5

    const/16 v5, 0xc8

    const-string v6, "LocationInBook"

    aput-object v6, v1, v5

    const/16 v5, 0xc9

    const-string v6, "Lookup"

    aput-object v6, v1, v5

    const/16 v5, 0xca

    const-string v6, "Max"

    aput-object v6, v1, v5

    const/16 v5, 0xcb

    const-string v6, "Medium"

    aput-object v6, v1, v5

    const/16 v5, 0xcc

    const-string v6, "Minus"

    aput-object v6, v1, v5

    const/16 v5, 0xcd

    const-string v6, "MissedLookup"

    aput-object v6, v1, v5

    const/16 v5, 0xce

    const-string v6, "MyItems"

    aput-object v6, v1, v5

    const/16 v5, 0xcf

    const-string v6, "None"

    aput-object v6, v1, v5

    const/16 v5, 0xd0

    const-string v6, "OOBE"

    aput-object v6, v1, v5

    const/16 v5, 0xd1

    const-string v6, "PageInBook"

    aput-object v6, v1, v5

    const/16 v5, 0xd2

    const-string v6, "PageLeft"

    aput-object v6, v1, v5

    const/16 v5, 0xd3

    const-string v6, "PageRight"

    aput-object v6, v1, v5

    const/16 v5, 0xd4

    const-string v6, "PageTurn"

    aput-object v6, v1, v5

    const/16 v5, 0xd5

    const-string v6, "Palantino"

    aput-object v6, v1, v5

    const/16 v5, 0xd6

    const-string v6, "Periodicals"

    aput-object v6, v1, v5

    const/16 v5, 0xd7

    const-string v6, "Plus"

    aput-object v6, v1, v5

    const/16 v5, 0xd8

    const-string v6, "Portrait"

    aput-object v6, v1, v5

    const/16 v5, 0xd9

    const-string v6, "PublisherFont"

    aput-object v6, v1, v5

    const/16 v5, 0xda

    const-string v6, "RateBook"

    aput-object v6, v1, v5

    const/16 v5, 0xdb

    const-string v6, "Recent"

    aput-object v6, v1, v5

    const/16 v5, 0xdc

    const-string v6, "RemoveFromCollection"

    aput-object v6, v1, v5

    const/16 v5, 0xdd

    const-string v6, "RemoveFromDevice"

    aput-object v6, v1, v5

    const/16 v5, 0xde

    const-string v6, "Reset"

    aput-object v6, v1, v5

    const/16 v5, 0xdf

    const-string v6, "Restart"

    aput-object v6, v1, v5

    const/16 v5, 0xe0

    const-string v6, "Save"

    aput-object v6, v1, v5

    const/16 v5, 0xe1

    const-string v6, "SaveNote"

    aput-object v6, v1, v5

    const/16 v5, 0xe2

    const-string v6, "Scroll"

    aput-object v6, v1, v5

    const/16 v5, 0xe3

    const-string v6, "Scrolled"

    aput-object v6, v1, v5

    const/16 v5, 0xe4

    const-string v6, "SectionLeft"

    aput-object v6, v1, v5

    const/16 v5, 0xe5

    const-string v6, "SectionRight"

    aput-object v6, v1, v5

    const/16 v5, 0xe6

    const-string v6, "SeeLessDescription"

    aput-object v6, v1, v5

    const/16 v5, 0xe7

    const-string v6, "SeeMoreDescription"

    aput-object v6, v1, v5

    const/16 v5, 0xe8

    const-string v6, "Select"

    aput-object v6, v1, v5

    const/16 v5, 0xe9

    const-string v6, "SelectFontFace"

    aput-object v6, v1, v5

    const/16 v5, 0xea

    const-string v6, "SelectFontSize"

    aput-object v6, v1, v5

    const/16 v5, 0xeb

    const-string v6, "SelectLineSpacing"

    aput-object v6, v1, v5

    const/16 v5, 0xec

    const-string v6, "SelectMarginSize"

    aput-object v6, v1, v5

    const/16 v5, 0xed

    const-string v6, "SelectType"

    aput-object v6, v1, v5

    const/16 v5, 0xee

    const-string v6, "SetPasscode"

    aput-object v6, v1, v5

    const/16 v5, 0xef

    const-string v6, "Share"

    aput-object v6, v1, v5

    const/16 v5, 0xf0

    const-string v6, "ShareHighlight"

    aput-object v6, v1, v5

    const/16 v5, 0xf1

    const-string v6, "Small"

    aput-object v6, v1, v5

    const/16 v5, 0xf2

    const-string v6, "Submit"

    aput-object v6, v1, v5

    const/16 v5, 0xf3

    const-string v6, "SwipeLeft"

    aput-object v6, v1, v5

    const/16 v5, 0xf4

    const-string v6, "SwipeRight"

    aput-object v6, v1, v5

    const/16 v5, 0xf5

    const-string v6, "SwitchKeyboard"

    aput-object v6, v1, v5

    const/16 v5, 0xf6

    const-string v6, "SyncFurthestPage"

    aput-object v6, v1, v5

    const/16 v5, 0xf7

    const-string v6, "ThisBook"

    aput-object v6, v1, v5

    const/16 v5, 0xf8

    const-string v6, "TimeLeftInBook"

    aput-object v6, v1, v5

    const/16 v5, 0xf9

    const-string v6, "TimeLeftInChapter"

    aput-object v6, v1, v5

    const/16 v5, 0xfa

    const-string v6, "Title"

    aput-object v6, v1, v5

    const/16 v5, 0xfb

    const-string v6, "ToggleAnnoBackup"

    aput-object v6, v1, v5

    const/16 v5, 0xfc

    const-string v6, "ToggleCloud"

    aput-object v6, v1, v5

    const/16 v5, 0xfd

    const-string v6, "ToggleCoverOrList"

    aput-object v6, v1, v5

    const/16 v5, 0xfe

    const-string v6, "ToggleGrok"

    aput-object v6, v1, v5

    const/16 v5, 0xff

    const-string v6, "TogglePHLs"

    aput-object v6, v1, v5

    const/16 v5, 0x100

    const-string v6, "TogglePageRefresh"

    aput-object v6, v1, v5

    const/16 v5, 0x101

    const-string v6, "TogglePublicNotes"

    aput-object v6, v1, v5

    const/16 v5, 0x102

    const-string v6, "ToggleRecommendedContent"

    aput-object v6, v1, v5

    const/16 v5, 0x103

    const-string v6, "ToggleStore"

    aput-object v6, v1, v5

    const/16 v5, 0x104

    const-string v6, "ToggleVocabBuilder"

    aput-object v6, v1, v5

    const/16 v5, 0x105

    const-string v6, "ToggleWebBrowser"

    aput-object v6, v1, v5

    const/16 v5, 0x106

    const-string v6, "Translate"

    aput-object v6, v1, v5

    const/16 v5, 0x107

    const-string v6, "Update"

    aput-object v6, v1, v5

    const/16 v5, 0x108

    const-string v6, "UpdateKindle"

    aput-object v6, v1, v5

    const/16 v5, 0x109

    const-string v6, "UseSuggestion"

    aput-object v6, v1, v5

    const/16 v5, 0x10a

    const-string v6, "ViewCreativeCommonsLicense"

    aput-object v6, v1, v5

    const/16 v5, 0x10b

    const-string v6, "ViewWikipediaArticle"

    aput-object v6, v1, v5

    const/16 v5, 0x10c

    const-string v6, "Wikipedia"

    aput-object v6, v1, v5

    const-string v5, "context"

    .line 18
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Highlight"

    const-string v5, "AddNote"

    .line 289
    filled-new-array {v1, v5, v4, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v1, v3, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV1;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
