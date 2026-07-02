.class public enum Lcom/amazon/kindle/socialsharing/util/AppListEnum;
.super Ljava/lang/Enum;
.source "AppListEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/socialsharing/util/AppListEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Email:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Facebook:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Goodreads:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum GooglePlus:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Hangouts:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Kik:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final enum Line:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum LinkedIn:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Messenger:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Pinterest:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum SMS:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Skype:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Tumblr:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Twitter:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum WeChat:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Weibo:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

.field public static final enum Whatsapp:Lcom/amazon/kindle/socialsharing/util/AppListEnum;


# instance fields
.field private final alias:Ljava/lang/String;

.field private final applicationNameId:I

.field private final canShareWhenNotInstalled:Z

.field private final closeAfterSharing:Z

.field private final gridItemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;"
        }
    .end annotation
.end field

.field private final icon:I

.field private final imageSharingSupported:Z

.field private final minAppVersion:I

.field private final packageNameValidator:Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 36
    new-instance v13, Lcom/amazon/kindle/socialsharing/util/AppListEnum$1;

    new-instance v3, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v14, ""

    invoke-direct {v3, v14}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/amazon/kindle/socialsharing/common/R$drawable;->goodreads_icon:I

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_goodreads:I

    const-class v10, Lcom/amazon/kindle/socialsharing/ui/gridItem/GoodreadsShareTargetGridItem;

    const-string v1, "Goodreads"

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v7, 0xb4

    const-string v9, "Goodreads"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/socialsharing/util/AppListEnum$1;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v13, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Goodreads:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 42
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;

    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/socialsharing/util/SmsPackageNameValidator;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->sms_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_message:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/SmsShareTargetGridItem;

    const-string v16, "SMS"

    const/16 v17, 0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v22, 0xaa

    const-string v24, "sms"

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->SMS:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 43
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum$2;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    invoke-direct {v1, v14}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v34, Lcom/amazon/kindle/socialsharing/common/R$drawable;->email_icon:I

    sget v36, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_email:I

    const-class v38, Lcom/amazon/kindle/socialsharing/ui/gridItem/EmailShareTargetGridItem;

    const-string v29, "Email"

    const/16 v30, 0x2

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v35, 0xa0

    const-string v37, "email"

    const/16 v39, 0x1

    const/16 v40, 0x1

    move-object/from16 v28, v0

    move-object/from16 v31, v1

    invoke-direct/range {v28 .. v40}, Lcom/amazon/kindle/socialsharing/util/AppListEnum$2;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Email:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 49
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum$3;

    new-instance v5, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v1, "com.facebook.katana"

    invoke-direct {v5, v1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$drawable;->facebook_icon:I

    sget v10, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_facebook:I

    const-class v12, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;

    const-string v3, "Facebook"

    const/4 v4, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/16 v9, 0x96

    const-string v11, "facebook"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/socialsharing/util/AppListEnum$3;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Facebook:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 65
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum$4;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v2, "com.facebook.orca"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->messenger_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_messenger:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/MessengerShareTargetGridItem;

    const-string v16, "Messenger"

    const/16 v17, 0x4

    const/16 v19, 0x16

    const/16 v22, 0x8c

    const-string v24, "messenger"

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum$4;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Messenger:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 71
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum$5;

    new-instance v5, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v1, "com.twitter.android"

    invoke-direct {v5, v1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$drawable;->twitter_icon:I

    sget v10, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_twitter:I

    const-class v12, Lcom/amazon/kindle/socialsharing/ui/gridItem/TwitterShareTargetGridItem;

    const-string v3, "Twitter"

    const/4 v4, 0x5

    const/4 v6, -0x1

    const/16 v9, 0x82

    const-string v11, "twitter"

    const/4 v13, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/socialsharing/util/AppListEnum$5;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Twitter:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 77
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v2, "com.whatsapp"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->whatsapp_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_whatsapp:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/WhatsappShareTargetGridItem;

    const-string v16, "Whatsapp"

    const/16 v17, 0x6

    const/16 v19, -0x1

    const/16 v22, 0x78

    const-string v24, "whatsapp"

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Whatsapp:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 78
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v5, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v1, "com.tencent.mm"

    invoke-direct {v5, v1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$drawable;->wechat_icon:I

    sget v10, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_wechat:I

    const-class v12, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v3, "WeChat"

    const/4 v4, 0x7

    const/4 v7, 0x0

    const/16 v9, 0x6e

    const-string v11, "wechat"

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->WeChat:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 79
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v2, "com.google.android.apps.plus"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->google_plus_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_google_plus:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v16, "GooglePlus"

    const/16 v17, 0x8

    const/16 v22, 0x64

    const-string v24, "Google Plus"

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->GooglePlus:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 80
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v5, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v1, "com.tumblr"

    invoke-direct {v5, v1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$drawable;->tumblr_icon:I

    sget v10, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_tumblr:I

    const-class v12, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v3, "Tumblr"

    const/16 v4, 0x9

    const/16 v9, 0x5a

    const-string v11, "Tumblr"

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Tumblr:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 81
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v2, "com.linkedin.android"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->linkedin_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_linkedin:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/LinkedInShareTargetGridItem;

    const-string v16, "LinkedIn"

    const/16 v17, 0xa

    const/16 v22, 0x50

    const-string v24, "LinkedIn"

    const/16 v27, 0x0

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->LinkedIn:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 82
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v5, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v1, "com.pinterest"

    invoke-direct {v5, v1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$drawable;->pinterest_icon:I

    sget v10, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_pinterest:I

    const-class v12, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v3, "Pinterest"

    const/16 v4, 0xb

    const/16 v9, 0x46

    const-string v11, "Pinterest"

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Pinterest:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 83
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v2, "com.sina.weibo"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->weibo_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_weibo:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v16, "Weibo"

    const/16 v17, 0xc

    const/16 v22, 0x43

    const-string v24, "Weibo"

    const/16 v27, 0x1

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Weibo:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 84
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v5, Lcom/amazon/kindle/socialsharing/util/HangoutsPackageNameValidator;

    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const-string v2, "com.google.android.talk"

    invoke-direct {v5, v2, v1}, Lcom/amazon/kindle/socialsharing/util/HangoutsPackageNameValidator;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$drawable;->hangout_icon:I

    sget v10, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_hangouts:I

    const-class v12, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v3, "Hangouts"

    const/16 v4, 0xd

    const/16 v9, 0x41

    const-string v11, "Hangouts"

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Hangouts:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 85
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v2, "kik.android"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->kik_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_kik:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v16, "Kik"

    const/16 v17, 0xe

    const/16 v22, 0x3c

    const-string v24, "Kik"

    const/16 v27, 0x0

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Kik:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 86
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v5, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v1, "com.skype.raider"

    invoke-direct {v5, v1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/amazon/kindle/socialsharing/common/R$drawable;->skype_icon:I

    sget v10, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_skype:I

    const-class v12, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v3, "Skype"

    const/16 v4, 0xf

    const/16 v9, 0x32

    const-string v11, "Skype"

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Skype:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 87
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;

    const-string v2, "jp.naver.line.android"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    sget v21, Lcom/amazon/kindle/socialsharing/common/R$drawable;->line_icon:I

    sget v23, Lcom/amazon/kindle/socialsharing/common/R$string;->share_app_name_line:I

    const-class v25, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    const-string v16, "Line"

    const/16 v17, 0x10

    const/16 v22, 0x28

    const-string v24, "Line"

    move-object v15, v0

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v27}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Line:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v1, 0x11

    new-array v1, v1, [Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 32
    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Goodreads:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->SMS:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Email:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Facebook:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Messenger:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Twitter:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Whatsapp:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->WeChat:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->GooglePlus:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Tumblr:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->LinkedIn:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Pinterest:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Weibo:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Hangouts:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Kik:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->Skype:Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->$VALUES:[Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;",
            "IZIII",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;ZZ)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p4, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->minAppVersion:I

    .line 106
    iput-boolean p5, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->canShareWhenNotInstalled:Z

    .line 107
    iput p6, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->icon:I

    .line 108
    iput p7, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->priority:I

    .line 109
    iput p8, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->applicationNameId:I

    .line 110
    iput-object p9, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->alias:Ljava/lang/String;

    .line 111
    iput-object p10, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->gridItemClass:Ljava/lang/Class;

    .line 112
    iput-boolean p11, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->closeAfterSharing:Z

    .line 113
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->packageNameValidator:Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;

    .line 114
    iput-boolean p12, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->imageSharingSupported:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZLcom/amazon/kindle/socialsharing/util/AppListEnum$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p12}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public static getAppByPackageName(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/AppListEnum;
    .locals 5

    .line 142
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->values()[Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 143
    invoke-virtual {v3}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->getGridItemPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppsPresentIfInstalled()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/kindle/socialsharing/util/AppListEnum;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->values()[Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 155
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/util/AppListEnum;
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/socialsharing/util/AppListEnum;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->$VALUES:[Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    invoke-virtual {v0}, [Lcom/amazon/kindle/socialsharing/util/AppListEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/socialsharing/util/AppListEnum;

    return-object v0
.end method


# virtual methods
.method public canShareWhenNotInstalled()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->canShareWhenNotInstalled:Z

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 2

    .line 122
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->applicationNameId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloseAfterSharing()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->closeAfterSharing:Z

    return v0
.end method

.method public getGridItemClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->gridItemClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getGridItemPackageName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->packageNameValidator:Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;

    invoke-interface {v0}, Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->icon:I

    return v0
.end method

.method public getMinAppVersion()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->minAppVersion:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->priority:I

    return v0
.end method

.method public isAppInstalled()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->packageNameValidator:Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;

    invoke-interface {v0}, Lcom/amazon/kindle/socialsharing/util/IPackageNameValidator;->getValidPackageName()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBlockedInCurrentMarketPlace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isImageSharingSupported()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/amazon/kindle/socialsharing/util/AppListEnum;->imageSharingSupported:Z

    return v0
.end method

.method public isVersionBlocked(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
