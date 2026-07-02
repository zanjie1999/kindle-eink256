.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV5;
.super Ljava/lang/Object;
.source "StringListsV5.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 200

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Text"

    const-string v2, "Note"

    const-string v3, "Highlight"

    const-string v4, "PHL"

    const-string v5, "PublicHighlight"

    const-string v6, "PublicNote"

    const-string v7, "PassageContent"

    const-string v8, "ImageContent"

    .line 18
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "spanType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Bookmark"

    const-string v2, "ChapterStart"

    const-string v3, "ChapterEnd"

    .line 28
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pointType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Xray"

    const-string v4, "Book:Reading:Annotations"

    const-string v5, "Book:Reading:PageNumbers"

    const-string v6, "Book:Reading:PHLs"

    const-string v7, "Book:Reading:PublicNotes"

    const-string v8, "StartActions"

    const-string v9, "EndActions"

    const-string v10, "AuthorProfiles"

    const-string v11, "NextInSeries"

    const-string v12, "LanguageLayer"

    .line 33
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "auxContentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ViewMode"

    const-string v4, "ItemSort"

    const-string v5, "ItemFilter"

    const-string v6, "RecommendedContent"

    const-string v7, "AirplaneMode"

    const-string v8, "WirelessState"

    const-string v9, "DeviceKeyboard"

    const-string v10, "DeviceLocale"

    const-string v11, "ReadingProgress"

    const-string v12, "StartActionsEnabled"

    const-string v13, "Orientation"

    const-string v14, "Margins"

    const-string v15, "FontSizePoints"

    const-string v16, "FontSize"

    const-string v17, "LineSpacing"

    const-string v18, "FontFace"

    const-string v19, "AnnotationsBackup"

    const-string v20, "SpoilerGuard"

    const-string v21, "LanguageLayer"

    const-string v22, "Keyboard"

    const-string v23, "SortOrder"

    const-string v24, "ToLanguage"

    const-string v25, "FromLanguage"

    const-string v26, "PageRefresh"

    const-string v27, "VocabBuilder"

    const-string v28, "PopularHighlights"

    const-string v29, "PublicNotes"

    const-string v30, "MultipleChoiceEnabled"

    const-string v31, "LayerVisible"

    const-string v32, "DifficultyLevel"

    .line 45
    filled-new-array/range {v3 .. v32}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numWords"

    const-string v4, "MetricsTag"

    const-string v5, "ExcerptId"

    const-string v6, "HasSidecar"

    const-string v7, "Asin"

    const-string v8, "SidecarDownloadTime"

    const-string v9, "ContentType"

    const-string v10, "SidecarDownloadSuccess"

    const-string v11, "DisplayedReaderSettingsWidget"

    const-string v12, "DisplayedSendFeedbackWidget"

    const-string v13, "UserInitiated"

    const-string v14, "SuccessfulLaunch"

    const-string v15, "LayoutTag"

    const-string v16, "IsGoodreadsUser"

    const-string v17, "RefTagSuffix"

    const-string v18, "DisplayedBookListWidget"

    const-string v19, "DisplayedMarkAsReadingWidget"

    const-string v20, "DisplayedShovelerWidget"

    const-string v21, "DisplayedRatingWidget"

    const-string v22, "RecommendationCount"

    const-string v23, "DisplayedAuthorBioWidget"

    const-string v24, "DisplayedGoodreadsTeaserWidget"

    const-string v25, "DisplayedPositionInSeriesWidget"

    const-string v26, "DisplayedTimeToReadWidget"

    const-string v27, "AllLayoutsRejected"

    const-string v28, "DisplayedBookDetailWidget"

    const-string v29, "DefaultLayout"

    const-string v30, "EntityId"

    const-string v31, "DisplayedSimpleTextWidget"

    const-string v32, "LaunchTime"

    const-string v33, "DisplayedBuyBookWidget"

    const-string v34, "DisplayedFollowAuthorWidget"

    const-string v35, "HasErl"

    const-string v36, "Rating"

    const-string v37, "MarkAsReadingDisabled"

    const-string v38, "TopMentions"

    const-string v39, "HasExcerpts"

    const-string v40, "Images"

    const-string v41, "FoundEntity"

    const-string v42, "Index"

    const-string v43, "AuthorAsin"

    const-string v44, "DisplayedDefaultImage"

    const-string v45, "TeaserWithNoLaunch"

    const-string v46, "AffinityInitialStatusIsSubscribed"

    const-string v47, "AuthorCount"

    const-string v48, "AllMentions"

    const-string v49, "OdotSuccess"

    const-string v50, "PriceShown"

    const-string v51, "RatingSourcePublicSharedRating"

    const-string v52, "RatingSourceStored"

    const-string v53, "DescriptionSourceTextLength"

    const-string v54, "DescriptionSourceLabel"

    const-string v55, "RatingSourcePersonalizationRating"

    .line 77
    filled-new-array/range {v3 .. v55}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "metadataKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AirplaneMode"

    const-string v4, "InitialSelection"

    const-string v5, "SyncAndCheckForItems"

    const-string v6, "FoundLookup"

    const-string v7, "GotoLocation"

    const-string v8, "Goto"

    const-string v9, "DeRegister"

    const-string v10, "Register"

    const-string v11, "CycleReadingProgressSetting"

    const-string v12, "HeaderClose"

    const-string v13, "DeviceInfo"

    const-string v14, "PageRight"

    const-string v15, "AddHighlight"

    const-string v16, "PageLeft"

    const-string v17, "Translate"

    const-string v18, "SaveNote"

    const-string v19, "MissedLookup"

    const-string v20, "EntityLookup"

    const-string v21, "AddBookmark"

    const-string v22, "GotoMostRecent"

    const-string v23, "TeaserButton"

    const-string v24, "BuyFromStore"

    const-string v25, "GotoPosition"

    const-string v26, "Share"

    const-string v27, "AdjustedSelection"

    const-string v28, "Scroll"

    const-string v29, "SectionRight"

    const-string v30, "Scrolled"

    const-string v31, "ToggleLanguageLayer"

    const-string v32, "GotoPage"

    const-string v33, "DeleteHighlight"

    const-string v34, "SwipeRight"

    const-string v35, "SelectEntity"

    const-string v36, "SwipeLeft"

    const-string v37, "Back"

    const-string v38, "DeleteNote"

    const-string v39, "SectionLeft"

    const-string v40, "DeleteBookmark"

    const-string v41, "SelectType"

    const-string v42, "GoToBookLocation"

    const-string v43, "ShowFullDefinition"

    const-string v44, "TogglePageRefresh"

    const-string v45, "SeeInStore"

    const-string v46, "LangDict:Keyboard"

    const-string v47, "ODAC:Register"

    const-string v48, "DictionaryChanged"

    const-string v49, "PressedTimeline"

    const-string v50, "GotoBookmark"

    const-string v51, "SubmitRating"

    const-string v52, "ToggleVocabBuilder"

    const-string v53, "CancelFeedback"

    const-string v54, "SendFeedback"

    const-string v55, "SelectRelatedEntity"

    const-string v56, "EnlargeImage"

    const-string v57, "TogglePHL"

    const-string v58, "NextDefinition"

    const-string v59, "GotoFurthest"

    const-string v60, "ToggleAnnotationsBackup"

    const-string v61, "ViewedAuthorBio"

    const-string v62, "UpdateKindle"

    const-string v63, "MarkAsReading"

    const-string v64, "Legal"

    const-string v65, "LangDict:SelectDictionary"

    const-string v66, "ConfigurationBack"

    const-string v67, "ClearRating"

    const-string v68, "TogglePublicNotes"

    const-string v69, "Overflow"

    const-string v70, "Highlight"

    const-string v71, "LangDict:Language"

    const-string v72, "Submit"

    const-string v73, "RestartKindle"

    const-string v74, "ClickedReaderSettings"

    const-string v75, "SeeDescriptionSource"

    const-string v76, "GoToEntry"

    const-string v77, "AffinitySubscribe"

    const-string v78, "PreviousDefinition"

    const-string v79, "ResetDevice"

    const-string v80, "SleepWakeButton"

    const-string v81, "action"

    const-string v82, "EnableFromFtux"

    const-string v83, "GlossLookup"

    const-string v84, "MoreAction"

    const-string v85, "BackAction"

    const-string v86, "OverrideGloss"

    const-string v87, "GlossHelpful"

    const-string v88, "ViewOtherMeanings"

    const-string v89, "SuppressAlreadyKnown"

    const-string v90, "SuppressHardWords"

    const-string v91, "SuppressWrongMeaning"

    const-string v92, "HideHints"

    const-string v93, "ShowHints"

    const-string v94, "UnglossedDictionaryLookup"

    const-string v95, "GlossedDictionaryLookup"

    .line 132
    filled-new-array/range {v3 .. v95}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "EBOK"

    const-string v4, "EBSP"

    const-string v5, "KindleEndActions.ratingSubmission"

    const-string v6, "ReadingExperience.EndActions.Rating"

    const-string v7, "NWPR"

    const-string v8, "Wikipedia"

    const-string v9, "PDOC"

    const-string v10, "Goodreads.StartActions.MarkAsReading"

    const-string v11, "FEED"

    const-string v12, "PSNL"

    const-string v13, "Shelfari"

    const-string v14, "MAGZ"

    .line 227
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "metadataValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mostrecent"

    const-string v4, "My Items"

    const-string v5, "LIST_VIEW_MODE"

    const-string v6, "COVER_VIEW_MODE"

    const-string v7, "en-US"

    const-string/jumbo v8, "wifi"

    const-string v9, "LARGE"

    const-string v10, "Portrait"

    const-string v11, "Landscape"

    const-string v12, "LocationInBook"

    const-string v13, "MEDIUM"

    const-string v14, "caecilia regular"

    const-string/jumbo v15, "title"

    const-string v16, "en-GB"

    const-string v17, "SMALL"

    const-string v18, "none"

    const-string/jumbo v19, "zh-CN"

    const-string v20, "de-DE"

    const-string/jumbo v21, "wan"

    const-string v22, "es-ES"

    const-string v23, "nl-NL"

    const-string v24, "en"

    const-string v25, "collection"

    const-string v26, "ja-JP"

    const-string v27, "TimeLeftInGoal"

    const-string/jumbo v28, "pt-BR"

    const-string/jumbo v29, "ru-RU"

    const-string v30, "fr-CA"

    const-string v31, "fr-FR"

    const-string v32, "RELEVANCE"

    const-string v33, "TimeLeftInBook"

    const-string v34, "it-IT"

    const-string v35, "TimeLeftInChapter"

    const-string v36, "PageInBook"

    const-string v37, "UNKNOWN"

    const-string v38, "es-MX"

    const-string v39, "baskerville"

    const-string v40, "bookerly"

    const-string v41, "None"

    const-string v42, "futura"

    const-string v43, "condensed"

    const-string/jumbo v44, "palatino"

    const-string v45, "es"

    const-string v46, "NAME"

    const-string v47, "es-AR"

    const-string v48, "helvetica neue lt"

    const-string v49, "embedded_font"

    .line 241
    filled-new-array/range {v3 .. v49}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.lab126.booklet.home"

    const-string v4, "com.lab126.booklet.reader"

    const-string v5, "com.lab126.booklet.settings"

    const-string v6, "com.lab126.store"

    const-string v7, "com.lab126.booklet.periodicals"

    const-string v8, "com.lab126.booklet.discovery"

    const-string v9, "com.lab126.browser"

    const-string v10, "com.lab126.booklet.badges"

    const-string v11, "com.lab126.adviewer"

    const-string v12, "com.lab126.booklet.searchreference"

    const-string v13, "com.lab126.booklet.vocabbuilder"

    const-string v14, "com.lab126.kft"

    const-string v15, "com.lab126.booklet.oobe"

    const-string v16, "com.lab126.booklet.oobe.tutorial"

    const-string v17, "com.amazon.kindle.booklet.ad"

    const-string v18, "com.lab126.ku"

    const-string v19, "com.lab126.booklet.test"

    const-string v20, "com.lab126.odac"

    const-string v21, "com.lab126.booklet.imageviewer"

    const-string v22, "com.lab126.prime"

    const-string v23, "com.lab126.mfa"

    const-string v24, "com.lab126.booklet.testbooklet"

    const-string v25, "Global"

    const-string v26, "Book:Reading:MainContent"

    const-string v27, "Global:ScreenSaver"

    const-string v28, "Home"

    const-string v29, "Home:BROWSE"

    const-string v30, "Home:ARCHIVE"

    const-string v31, "Home:OnDevice"

    const-string v32, "Book:Chrome"

    const-string v33, "Settings"

    const-string v34, "Book:Reading:MainContent:Selection"

    const-string v35, "Book:Reading:MainContent:Selection:SmartLookup"

    const-string v36, "Book:Goto:ContentsCard"

    const-string v37, "Book:Goto"

    const-string v38, "Settings:SETTINGS"

    const-string v39, "StartActions"

    const-string v40, "Book:Goto:ContentsCard:PageLocation"

    const-string v41, "Book:Settings:Fonts"

    const-string v42, "AnyActionsAvailableWidgets"

    const-string v43, "Book:Reading:MainContent:Selection:QuickSelect"

    const-string v44, "Book:Reading:MainContent:Selection:SmartLookup:MoreMenu"

    const-string v45, "Book:Settings"

    const-string v46, "Book:Chrome:Menu"

    const-string v47, "EndActions"

    const-string v48, "Book:Scrubber:Preview"

    const-string v49, "Book:Reading:SyncToMostRecent"

    const-string v50, "XrayCard_Passage"

    const-string v51, "Book:Reading:MainContent:PublicNote"

    const-string v52, "Book:Reading:Bookmarks"

    const-string v53, "StartActionsSidecar"

    const-string v54, "Book:Reading:Annotations"

    const-string v55, "Xray"

    const-string v56, "Global:Search:Book"

    const-string v57, "Home:COLLECTION"

    const-string v58, "NextInSeries"

    const-string v59, "Book:Scrubber"

    const-string v60, "Book:Periodicals:Magazine"

    const-string v61, "Global:ScreenOff"

    const-string v62, "AnyActionsRatingWidget"

    const-string v63, "Book:Goto:NotesCard"

    const-string v64, "BuyFromSample"

    const-string v65, "Book:AddEditNote"

    const-string v66, "Book:Translation"

    const-string v67, "Book:Share:Progress"

    const-string v68, "AnyActionsBookListWidget"

    const-string v69, "AnyActionsLayoutConfiguration"

    const-string v70, "XrayInfoCard"

    const-string v71, "DisplaySettings"

    const-string v72, "Global:USB"

    const-string v73, "Book:Reading:NoteView"

    const-string v74, "AnyActionsMarkAsReadingWidget"

    const-string v75, "AnyActionsSendFeedbackWidget"

    const-string v76, "AnyActionsVerticalListLayout"

    const-string v77, "AnyActionsAuthorConfiguration"

    const-string v78, "AnyActionsSeeAllConfiguration"

    const-string v79, "AnyActionsReaderSettingsWidget"

    const-string v80, "Browser"

    const-string v81, "LanguageLearning"

    const-string v82, "ReadingOptions"

    const-string v83, "Global:Display:Brightness"

    const-string v84, "Book:Reading:Bookmarks:Preview"

    const-string v85, "Book:Goto:NotesCard:YourNotes"

    const-string v86, "SearchReferenceBook"

    const-string v87, "Book:Share:Passage"

    const-string v88, "XrayBookView"

    const-string v89, "XrayTab_TopMentions"

    const-string v90, "AnyActionsAuthorBioWidget"

    const-string v91, "AnyActionsShovelerWidget"

    const-string v92, "Book:ReadingProgress"

    const-string v93, "XrayCard_Image"

    const-string v94, "Book:Search:ScopeList"

    const-string v95, "DictionaryCard"

    const-string v96, "Book:Reading:NoteView:MoreMenu"

    const-string v97, "WikipediaCard"

    const-string v98, "Book:Periodicals:Cover"

    const-string v99, "Book:Periodicals:SectionStart"

    const-string v100, "Book:Reading:MainContent:Selection:SmartLookup:DictionaryCard:ChangeDictionary"

    const-string v101, "Book:Periodicals:Blog"

    const-string v102, "Book:Goto:NotesCard:PopularNotes"

    const-string v103, "Store"

    const-string v104, "XrayEntityView"

    const-string v105, "XrayTab_AllOfType1"

    const-string v106, "AnyActionsGroupLayout"

    const-string v107, "XrayTab_AllMentions"

    const-string v108, "XrayTab_AllOfType2"

    const-string v109, "XrayTab_AllOfType0"

    const-string v110, "XrayTab_AllOfType"

    const-string v111, "Book:Periodicals:NotesAndMarks"

    const-string v112, "AnyActionsBuyBookWidget"

    const-string v113, "Book:Reading:SyncToFurthest"

    const-string v114, "Book:ReportContentError"

    const-string v115, "XrayTab_Images"

    const-string v116, "AnyActionsFeedback"

    const-string v117, "Contents"

    const-string v118, "Settings:DEVICES_APPS"

    const-string v119, "XrayEntityDescription"

    const-string v120, "XrayCard_SpoilerGuard"

    const-string v121, "AuthorProfiles"

    const-string v122, "XrayGoTo"

    const-string v123, "Book:Goto:NotesCard:PublicNotes"

    const-string v124, "Settings:LEGAL"

    const-string v125, "XrayFeedback"

    const-string v126, "AnyActionsBookDetailWidget"

    const-string v127, "Book:Translation:About"

    const-string v128, "Settings:611"

    const-string v129, "Book:EndActions"

    const-string v130, "Book:Reading:MainContent:Selection:QuickSelect:MoreMenu"

    const-string v131, "Unidentified source scope"

    const-string v132, "Settings:REGISTRATION_OPTIONS"

    const-string v133, "Settings:DEVICE_OPTIONS"

    const-string v134, "Settings:READING_TIME"

    const-string v135, "Settings:SOCIAL_NETWORKS"

    const-string v136, "Settings:READING_OPTIONS"

    const-string v137, "Settings:REGISTRATION"

    const-string v138, "Settings:DEFAULT_PARENTAL_CONTROLS"

    const-string v139, "Settings:HOUSEHOLD_PROFILE_DISPLAY"

    const-string v140, "Settings:INTERNATIONAL"

    const-string v141, "Settings:PERSONALIZE"

    const-string v142, "Settings:311"

    const-string v143, "Settings:EDIT_ADULT_PROFILE"

    const-string v144, "Settings:ADVANCED_OPTIONS"

    const-string v145, "Settings:NOTES_HIGHLIGHTS"

    const-string v146, "Settings:VIBRATION_SETTINGS"

    const-string v147, "Settings:LANGUAGE"

    const-string v148, "Settings:SELECT_DICTIONARY"

    const-string v149, "Settings:FREETIME_START_UP_PAGE"

    const-string v150, "Settings:PASSCODE"

    const-string v151, "Settings:PROFILE_CONTENT_CONTROLLER"

    const-string v152, "Settings:PAYMENT_DISPLAY"

    const-string v153, "Settings:PRESSURE_SENSITIVITY"

    const-string v154, "Settings:GR_CONNECT"

    const-string v155, "Settings:FRONT_LIGHT"

    const-string v156, "Settings:DICTIONARY_LANGUAGES"

    const-string v157, "Settings:FREE_TIME_PROFILE_SETUP"

    const-string v158, "Settings:ITEMS_TO_EXISTING_PROFILE"

    const-string v159, "Settings:LANGUAGE_LEARNING"

    const-string v160, "Settings:EDIT_PROFILE_DISPLAY"

    const-string v161, "Settings:FREE_TIME_PROFILE_GIVEN_NAME_SETUP"

    const-string v162, "Settings:PARENTAL_CONTROLS_RESTRICTIONS"

    const-string v163, "Settings:ADD_PROFILE_HOUSEHOLD"

    const-string v164, "Settings:JOIN_ACCOUNTS"

    const-string v165, "Settings:WHISPER_TOUCH"

    const-string v166, "Settings:KEYBOARD"

    const-string v167, "Settings:SPECIAL_OFFERS"

    const-string v168, "Settings:CONNECT_SOCIAL_NETWORK"

    const-string v169, "RegistrationAndHouseHold"

    const-string v170, "Book:Reading:MainContent:Selection:SmartLookup:DictionaryCard"

    const-string v171, "Book:Reading:MainContent:Selection:SmartLookup:DictionaryCard:Homonym"

    const-string v172, "Book:Reading:MainContent:Selection:SmartLookup:Wikipedia"

    const-string v173, "Book:Reading:MainContent:Text"

    const-string v174, "Book:Reading:MainContent:Chapter:Start"

    const-string v175, "Book:Reading:MainContent:Highlight"

    const-string v176, "BROWSE"

    const-string v177, "ARCHIVE"

    const-string v178, "Book:Reading:MainContent:Chapter:End"

    const-string v179, "Book:Reading:MainContent:Note"

    const-string v180, "Book:Reading:MainContent:PHL"

    const-string v181, "Book:Reading:MainContent:PublicHighlight"

    const-string v182, "Book:Reading:MainContent:Bookmark"

    const-string v183, "Library:COLLECTION"

    const-string v184, "Library"

    const-string v185, "COLLECTION"

    const-string v186, "OnDevice"

    const-string/jumbo v187, "powerButtonDebounce"

    const-string v188, "LanguageLayer"

    const-string v189, "LL:DifficultyControl"

    const-string v190, "LL:FtuxDialog"

    const-string v191, "LL:Glosses"

    const-string v192, "LL:GlossDialog"

    const-string v193, "LL:GlossDialog:FullInfoCard"

    const-string v194, "LL:GlossDialog:OtherMeaningsCard"

    const-string v195, "LL:GlossDialog:SimpleInfoCard"

    const-string v196, "LL:GlossDialog:FeedbackTypeCard"

    const-string v197, "LL:GlossDialog:OverrideCard"

    const-string v198, "LL:GlossDialog:LowConfidenceFtuxCard"

    const-string v199, "LL:GlossDialog:LowConfidenceCard"

    .line 290
    filled-new-array/range {v3 .. v199}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV5;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
