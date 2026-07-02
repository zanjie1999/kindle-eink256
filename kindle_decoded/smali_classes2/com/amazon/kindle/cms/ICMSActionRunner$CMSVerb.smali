.class public final enum Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;
.super Ljava/lang/Enum;
.source "ICMSActionRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ICMSActionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CMSVerb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

.field public static final enum ARCHIVE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

.field public static final enum CANCEL_DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

.field public static final enum DELETE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

.field public static final enum DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

.field public static final enum KEEP_ISSUE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

.field public static final enum OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

.field public static final enum UNKEEP_ISSUE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;


# instance fields
.field private final actionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 13
    new-instance v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v1, 0x0

    const-string v2, "ARCHIVE"

    const-string v3, "archive"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->ARCHIVE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 14
    new-instance v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v2, 0x1

    const-string v3, "CANCEL_DOWNLOAD"

    const-string v4, "cancel_download"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->CANCEL_DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 15
    new-instance v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v3, 0x2

    const-string v4, "DELETE"

    const-string v5, "delete"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->DELETE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 16
    new-instance v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v4, 0x3

    const-string v5, "DOWNLOAD"

    const-string v6, "download"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 17
    new-instance v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v5, 0x4

    const-string v6, "KEEP_ISSUE"

    const-string v7, "keep_issue"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->KEEP_ISSUE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 18
    new-instance v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v6, 0x5

    const-string v7, "OPEN"

    const-string v8, "open"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 19
    new-instance v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v7, 0x6

    const-string v8, "UNKEEP_ISSUE"

    const-string/jumbo v9, "unkeep_issue"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->UNKEEP_ISSUE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 12
    sget-object v9, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->ARCHIVE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->CANCEL_DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->DELETE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->DOWNLOAD:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->KEEP_ISSUE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->OPEN:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->$VALUES:[Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->actionString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->$VALUES:[Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    return-object v0
.end method
