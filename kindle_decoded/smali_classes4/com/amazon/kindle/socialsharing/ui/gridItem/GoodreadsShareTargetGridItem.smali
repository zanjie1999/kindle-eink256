.class public Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;
.super Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;
.source "GoodreadsShareTargetGridItem.java"


# static fields
.field private static final ASIN:Ljava/lang/String; = "android.intent.extra.readersharingplugin.ASIN"

.field private static final BOOK_TITLE_KEY:Ljava/lang/String; = "android.intent.extra.readersharingplugin.BOOKTITLE"

.field private static final COLOR_MODE:Ljava/lang/String; = "android.intent.extra.readersharingplugin.COLORMODE"

.field private static final DEVICE_FAMILY_TABLET:Ljava/lang/String; = "tablet"

.field private static final EXTRA_IS_READER_SHARE:Ljava/lang/String; = "android.intent.extra.rs.IS_READERSHARE"

.field private static final EXTRA_READER_SHARE_PARAMS:Ljava/lang/String; = "ReaderShareParams"

.field private static final GOODREADS_SHARE_PROGRESS_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.goodreads.kindle.ProgressUpdateActivity"

.field private static final GOODREADS_SIGN_UP_ACTIVITY:Landroid/content/ComponentName;

.field private static final INTENT_TYPE_TEXT:Ljava/lang/String; = "text/plain"

.field private static final KCW_SHARE_PARAM_DEVICE_FAMILY:Ljava/lang/String; = "device_family"

.field private static final KCW_SHARE_PARAM_GOODREADS_ID:Ljava/lang/String; = "goodreads_id"

.field private static final KCW_SHARE_PARAM_GUID:Ljava/lang/String; = "guid"

.field private static final KCW_SHARE_PARAM_HIGHLIGHT_END:Ljava/lang/String; = "highlight_end"

.field private static final KCW_SHARE_PARAM_HIGHLIGHT_START:Ljava/lang/String; = "highlight_start"

.field private static final KCW_SHARE_PARAM_HIGHLIGHT_TEXT:Ljava/lang/String; = "highlight_text"

.field private static final KCW_SHARE_PARAM_KEY:Ljava/lang/String; = "key"

.field private static final KCW_SHARE_PARAM_NOTE_LOCATION:Ljava/lang/String; = "note_location"

.field private static final KCW_SHARE_PARAM_SHARE_TYPE:Ljava/lang/String; = "share_type"

.field private static final KCW_SHARE_PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PASSAGE:Ljava/lang/String; = "passage"

.field private static final PERCENT_COMPLETE:Ljava/lang/String; = "android.intent.extra.readersharingplugin.PERCENTCOMPLETE"

.field private static final PROFILE_ID:Ljava/lang/String; = "android.intent.extra.readersharingplugin.PROFILEID"

.field private static final SOCIAL_PLATFORM_GOODREADS_ACTIVITY:Ljava/lang/String; = "com.amazon.socialplatform.activities.GoodreadsShareActivity"

.field private static final SOCIAL_PLATFORM_PACKAGE:Ljava/lang/String; = "com.amazon.socialplatform"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.goodreads.kindle"

    const-string v2, "com.goodreads.kindle.ui.activity.SplashActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->GOODREADS_SIGN_UP_ACTIVITY:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V
    .locals 0

    .line 64
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIZZ)V

    return-void
.end method

.method private convertContentTypeForRequest(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;
    .locals 1

    .line 173
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem$1;->$SwitchMap$com$amazon$kindle$krx$content$ContentType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "PDOC"

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "AUDI"

    return-object p1

    :pswitch_1
    const-string p1, "OFFICE_DOC"

    return-object p1

    :pswitch_2
    const-string p1, "PSNL"

    return-object p1

    :pswitch_3
    return-object v0

    :pswitch_4
    const-string p1, "NWPR"

    return-object p1

    :pswitch_5
    const-string p1, "MAGZ"

    return-object p1

    :pswitch_6
    const-string p1, "EBSP"

    return-object p1

    :pswitch_7
    const-string p1, "EBOK"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startGoodreadsSignUpActivity(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    sget-object v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->GOODREADS_SIGN_UP_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getMetricName()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMetricName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.goodreads.kindle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v1
.end method

.method public shareBook(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)Z
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shareProgress(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 3

    .line 74
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    .line 78
    invoke-static {p3}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->isGoodreadsLinked(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->startGoodreadsSignUpActivity(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.goodreads.kindle.ProgressUpdateActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-static {p3}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->getGoodreadsUserId(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.readersharingplugin.PROFILEID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getReadingProgress()I

    move-result v1

    const-string v2, "android.intent.extra.readersharingplugin.PERCENTCOMPLETE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.readersharingplugin.ASIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.extra.readersharingplugin.BOOKTITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.intent.extra.readersharingplugin.COLORMODE"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "text/plain"

    .line 94
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shareQuote(Landroid/app/Activity;Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)Z
    .locals 9

    .line 105
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    .line 109
    invoke-static {p3}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->isGoodreadsLinked(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->startGoodreadsSignUpActivity(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    goto/16 :goto_0

    .line 113
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-nez v2, :cond_1

    .line 119
    sget-object p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->LOG_TAG:Ljava/lang/String;

    const-string p2, "callShareActivity called with null book, bailing out"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getAsin()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuoteStart()I

    move-result v5

    invoke-static {v5}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 126
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuoteEnd()I

    move-result v6

    invoke-static {v6}, Lcom/amazon/kindle/socialsharing/util/ContentUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    .line 127
    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/Share;->getQuote()Ljava/lang/String;

    move-result-object p2

    const-string v7, "com.amazon.socialplatform"

    const-string v8, "com.amazon.socialplatform.activities.GoodreadsShareActivity"

    .line 133
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-static {p3}, Lcom/amazon/kindle/socialsharing/util/GoodreadsUtil;->getGoodreadsUserId(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object p3

    const-string v8, "goodreads_id"

    invoke-virtual {v7, v8, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "key"

    .line 137
    invoke-virtual {v7, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;->convertContentTypeForRequest(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "type"

    invoke-virtual {v7, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "guid"

    .line 139
    invoke-virtual {v7, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "note_location"

    .line 140
    invoke-virtual {v7, p3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "highlight_text"

    .line 141
    invoke-virtual {v7, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "highlight_start"

    .line 142
    invoke-virtual {v7, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "highlight_end"

    .line 143
    invoke-virtual {v7, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "passage"

    const-string p3, "share_type"

    .line 144
    invoke-virtual {v7, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "device_family"

    const-string p3, "tablet"

    .line 145
    invoke-virtual {v7, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.intent.extra.rs.IS_READERSHARE"

    .line 149
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "ReaderShareParams"

    .line 150
    invoke-virtual {v0, p2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return v1
.end method
