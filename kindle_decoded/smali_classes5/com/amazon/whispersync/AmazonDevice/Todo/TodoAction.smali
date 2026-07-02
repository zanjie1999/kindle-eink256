.class public final enum Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;
.super Ljava/lang/Enum;
.source "TodoAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionDelete:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionDownload:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionGet:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionSend:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionSet:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionUpdateAnnotations:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionUpdateReadingPosition:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

.field public static final enum TodoActionUpload:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;


# instance fields
.field private mActionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v1, 0x0

    const-string v2, "TodoActionGet"

    const-string v3, "GET"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionGet:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v2, 0x1

    const-string v3, "TodoActionUpdateAnnotations"

    const-string v4, "UPD_ANOT"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUpdateAnnotations:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v3, 0x2

    const-string v4, "TodoActionUpdateReadingPosition"

    const-string v5, "UPD_LPRD"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUpdateReadingPosition:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v4, 0x3

    const-string v5, "TodoActionDelete"

    const-string v6, "DEL"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionDelete:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v5, 0x4

    const-string v6, "TodoActionSend"

    const-string v7, "SND"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionSend:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v6, 0x5

    const-string v7, "TodoActionSet"

    const-string v8, "SET"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionSet:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v7, 0x6

    const-string v8, "TodoActionUpload"

    const-string v9, "UPLOAD"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUpload:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/4 v8, 0x7

    const-string v9, "TodoActionDownload"

    const-string v10, "DOWNLOAD"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionDownload:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 14
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/16 v9, 0x8

    const-string v10, "TodoActionUnknown"

    invoke-direct {v0, v10, v9}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    .line 4
    sget-object v11, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionGet:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUpdateAnnotations:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUpdateReadingPosition:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionDelete:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionSend:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionSet:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUpload:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionDownload:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->mActionId:Ljava/lang/String;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->mActionId:Ljava/lang/String;

    return-void
.end method

.method public static getActionById(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;
    .locals 5

    .line 36
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->values()[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 38
    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->getActionId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->TodoActionUnknown:Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;

    return-object v0
.end method


# virtual methods
.method getActionId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Todo/TodoAction;->mActionId:Ljava/lang/String;

    return-object v0
.end method
