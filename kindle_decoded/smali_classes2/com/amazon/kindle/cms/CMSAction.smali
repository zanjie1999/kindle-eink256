.class public final enum Lcom/amazon/kindle/cms/CMSAction;
.super Ljava/lang/Enum;
.source "CMSAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/CMSAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/CMSAction;

.field public static final enum BOOKS_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

.field public static final enum BOOKS_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

.field public static final enum NEWSSTAND_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

.field public static final enum NEWSSTAND_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;


# instance fields
.field private final actionArg:Ljava/lang/String;

.field private final verb:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lcom/amazon/kindle/cms/CMSAction;

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v2, 0x0

    const-string v3, "BOOKS_LIBRARY"

    const-string v4, "action/launcher/books/library"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/amazon/kindle/cms/CMSAction;-><init>(Ljava/lang/String;ILcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    .line 10
    new-instance v0, Lcom/amazon/kindle/cms/CMSAction;

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v3, 0x1

    const-string v4, "BOOKS_COLLECTIONS"

    const-string v5, "action/launcher/books/collections"

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/amazon/kindle/cms/CMSAction;-><init>(Ljava/lang/String;ILcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

    .line 11
    new-instance v0, Lcom/amazon/kindle/cms/CMSAction;

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v4, 0x2

    const-string v5, "NEWSSTAND_LIBRARY"

    const-string v6, "action/launcher/newsstand/library"

    invoke-direct {v0, v5, v4, v1, v6}, Lcom/amazon/kindle/cms/CMSAction;-><init>(Ljava/lang/String;ILcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSAction;->NEWSSTAND_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    .line 12
    new-instance v0, Lcom/amazon/kindle/cms/CMSAction;

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v5, 0x3

    const-string v6, "NEWSSTAND_COLLECTIONS"

    const-string v7, "action/launcher/newsstand/collections"

    invoke-direct {v0, v6, v5, v1, v7}, Lcom/amazon/kindle/cms/CMSAction;-><init>(Ljava/lang/String;ILcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSAction;->NEWSSTAND_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/cms/CMSAction;

    .line 8
    sget-object v6, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    aput-object v6, v1, v2

    sget-object v2, Lcom/amazon/kindle/cms/CMSAction;->BOOKS_COLLECTIONS:Lcom/amazon/kindle/cms/CMSAction;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/cms/CMSAction;->NEWSSTAND_LIBRARY:Lcom/amazon/kindle/cms/CMSAction;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/amazon/kindle/cms/CMSAction;->$VALUES:[Lcom/amazon/kindle/cms/CMSAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/amazon/kindle/cms/CMSAction;->verb:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 19
    iput-object p4, p0, Lcom/amazon/kindle/cms/CMSAction;->actionArg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/CMSAction;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/cms/CMSAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/CMSAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/CMSAction;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/cms/CMSAction;->$VALUES:[Lcom/amazon/kindle/cms/CMSAction;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/CMSAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/CMSAction;

    return-object v0
.end method


# virtual methods
.method public getActionArg()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSAction;->actionArg:Ljava/lang/String;

    return-object v0
.end method
