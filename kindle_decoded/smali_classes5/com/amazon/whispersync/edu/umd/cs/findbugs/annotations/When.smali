.class public final enum Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;
.super Ljava/lang/Enum;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

.field public static final enum ANYTIME:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

.field public static final enum FIRST:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

.field public static final enum LAST:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    const/4 v1, 0x0

    const-string v2, "FIRST"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->FIRST:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    new-instance v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    const/4 v2, 0x1

    const-string v3, "ANYTIME"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->ANYTIME:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    new-instance v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    const/4 v3, 0x2

    const-string v4, "LAST"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->LAST:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    .line 25
    sget-object v5, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->FIRST:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->ANYTIME:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->$VALUES:[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    return-object p0
.end method

.method public static final values()[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->$VALUES:[Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/When;

    return-object v0
.end method
