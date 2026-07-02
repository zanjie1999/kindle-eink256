.class public final enum Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

.field public static final enum HIGH:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

.field public static final enum IGNORE:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

.field public static final enum LOW:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

.field public static final enum MEDIUM:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;


# instance fields
.field private final priorityValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->HIGH:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    new-instance v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    const/4 v3, 0x2

    const-string v4, "MEDIUM"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->MEDIUM:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    new-instance v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    const/4 v4, 0x3

    const-string v5, "LOW"

    invoke-direct {v0, v5, v3, v4}, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->LOW:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    new-instance v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    const-string v5, "IGNORE"

    const/4 v6, 0x5

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->IGNORE:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    .line 27
    sget-object v6, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->HIGH:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->MEDIUM:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->LOW:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->$VALUES:[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->priorityValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    return-object p0
.end method

.method public static final values()[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->$VALUES:[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;

    return-object v0
.end method


# virtual methods
.method public getPriorityValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->priorityValue:I

    return v0
.end method
