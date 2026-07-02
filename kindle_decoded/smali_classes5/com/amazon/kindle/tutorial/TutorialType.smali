.class final enum Lcom/amazon/kindle/tutorial/TutorialType;
.super Ljava/lang/Enum;
.source "TutorialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/tutorial/TutorialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum A11Y_ANNOUNCEMENT:Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum ALERT:Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum BROCHURE:Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum CUSTOM_UI:Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum DIALOG:Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum FULL_PAGE:Lcom/amazon/kindle/tutorial/TutorialType;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TOAST:Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum TOOLTIP:Lcom/amazon/kindle/tutorial/TutorialType;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/tutorial/TutorialType;


# instance fields
.field private final action:Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;

.field private final stringTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 22
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/TooltipLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/TooltipLauncher;-><init>()V

    const/4 v2, 0x0

    const-string v3, "TOOLTIP"

    const-string/jumbo v4, "tooltip"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->TOOLTIP:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 23
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/DialogLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/DialogLauncher;-><init>()V

    const/4 v3, 0x1

    const-string v4, "DIALOG"

    const-string v5, "dialog"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->DIALOG:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/BrochureLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/BrochureLauncher;-><init>()V

    const/4 v4, 0x2

    const-string v5, "BROCHURE"

    const-string v6, "brochure"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->BROCHURE:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 25
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/FullPageLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/FullPageLauncher;-><init>()V

    const/4 v5, 0x3

    const-string v6, "FULL_PAGE"

    const-string v7, "fullPage"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->FULL_PAGE:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/CustomUILauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/CustomUILauncher;-><init>()V

    const/4 v6, 0x4

    const-string v7, "CUSTOM_UI"

    const-string v8, "custom"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->CUSTOM_UI:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 27
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/ToastLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/ToastLauncher;-><init>()V

    const/4 v7, 0x5

    const-string v8, "TOAST"

    const-string/jumbo v9, "toast"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->TOAST:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 28
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/AlertLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/AlertLauncher;-><init>()V

    const/4 v8, 0x6

    const-string v9, "ALERT"

    const-string v10, "alert"

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->ALERT:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 29
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/A11YAnnouncementLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/A11YAnnouncementLauncher;-><init>()V

    const/4 v9, 0x7

    const-string v10, "A11Y_ANNOUNCEMENT"

    const-string v11, "a11yAnnouncement"

    invoke-direct {v0, v10, v9, v11, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->A11Y_ANNOUNCEMENT:Lcom/amazon/kindle/tutorial/TutorialType;

    .line 30
    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialType;

    new-instance v1, Lcom/amazon/kindle/tutorial/launcher/NoOpLauncher;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/launcher/NoOpLauncher;-><init>()V

    const/16 v10, 0x8

    const-string v11, "UNKNOWN"

    const-string v12, "?????"

    invoke-direct {v0, v11, v10, v12, v1}, Lcom/amazon/kindle/tutorial/TutorialType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->UNKNOWN:Lcom/amazon/kindle/tutorial/TutorialType;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/amazon/kindle/tutorial/TutorialType;

    .line 21
    sget-object v11, Lcom/amazon/kindle/tutorial/TutorialType;->TOOLTIP:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v11, v1, v2

    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialType;->DIALOG:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialType;->BROCHURE:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialType;->FULL_PAGE:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialType;->CUSTOM_UI:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialType;->TOAST:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialType;->ALERT:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/tutorial/TutorialType;->A11Y_ANNOUNCEMENT:Lcom/amazon/kindle/tutorial/TutorialType;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/amazon/kindle/tutorial/TutorialType;->$VALUES:[Lcom/amazon/kindle/tutorial/TutorialType;

    .line 32
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/TutorialType;->stringTypeName:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/amazon/kindle/tutorial/TutorialType;->action:Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;

    return-void
.end method

.method public static getTutorialFromString(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/TutorialType;
    .locals 5

    .line 63
    invoke-static {}, Lcom/amazon/kindle/tutorial/TutorialType;->values()[Lcom/amazon/kindle/tutorial/TutorialType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 64
    iget-object v4, v3, Lcom/amazon/kindle/tutorial/TutorialType;->stringTypeName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tutorial type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object p0, Lcom/amazon/kindle/tutorial/TutorialType;->UNKNOWN:Lcom/amazon/kindle/tutorial/TutorialType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/TutorialType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/tutorial/TutorialType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/tutorial/TutorialType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->$VALUES:[Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/tutorial/TutorialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/tutorial/TutorialType;

    return-object v0
.end method


# virtual methods
.method public getStringTypeName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialType;->stringTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialType;->action:Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;->showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z

    move-result p1

    return p1
.end method
