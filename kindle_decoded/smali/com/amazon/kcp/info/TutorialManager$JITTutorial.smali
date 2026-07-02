.class public final enum Lcom/amazon/kcp/info/TutorialManager$JITTutorial;
.super Ljava/lang/Enum;
.source "TutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/TutorialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JITTutorial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/info/TutorialManager$JITTutorial;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

.field public static final enum LIBRARY_SORT:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

.field public static final enum READER_NAV_PANEL:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

.field public static final enum READER_SOCIAL_SHARING_BOOK:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

.field public static final enum READER_VIEWOPTIONS:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

.field public static final enum UNREC_HOME_SCROLL_TO_END:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;


# instance fields
.field public final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    new-instance v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const/4 v1, 0x0

    const-string v2, "LIBRARY_SORT"

    const-string v3, "JIT_LibrarySort"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->LIBRARY_SORT:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    .line 49
    new-instance v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const/4 v2, 0x1

    const-string v3, "READER_VIEWOPTIONS"

    const-string v4, "JIT_ReaderViewOptions"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_VIEWOPTIONS:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    .line 50
    new-instance v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const/4 v3, 0x2

    const-string v4, "READER_NAV_PANEL"

    const-string v5, "JIT_ReaderNavPanel"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_NAV_PANEL:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    .line 51
    new-instance v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const/4 v4, 0x3

    const-string v5, "READER_SOCIAL_SHARING_BOOK"

    const-string v6, "JIT_ReaderSocialSharingBook"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_SOCIAL_SHARING_BOOK:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    .line 52
    new-instance v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const/4 v5, 0x4

    const-string v6, "UNREC_HOME_SCROLL_TO_END"

    const-string v7, "JIT_UnrecHomeScrollToEnd"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->UNREC_HOME_SCROLL_TO_END:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    .line 47
    sget-object v7, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->LIBRARY_SORT:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_VIEWOPTIONS:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_NAV_PANEL:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->READER_SOCIAL_SHARING_BOOK:Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->$VALUES:[Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/info/TutorialManager$JITTutorial;
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/info/TutorialManager$JITTutorial;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->$VALUES:[Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    invoke-virtual {v0}, [Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    return-object v0
.end method
