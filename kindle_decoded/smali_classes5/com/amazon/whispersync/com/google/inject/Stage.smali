.class public final enum Lcom/amazon/whispersync/com/google/inject/Stage;
.super Ljava/lang/Enum;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/com/google/inject/Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/com/google/inject/Stage;

.field public static final enum DEVELOPMENT:Lcom/amazon/whispersync/com/google/inject/Stage;

.field public static final enum PRODUCTION:Lcom/amazon/whispersync/com/google/inject/Stage;

.field public static final enum TOOL:Lcom/amazon/whispersync/com/google/inject/Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Stage;

    const/4 v1, 0x0

    const-string v2, "TOOL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/Stage;->TOOL:Lcom/amazon/whispersync/com/google/inject/Stage;

    .line 38
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Stage;

    const/4 v2, 0x1

    const-string v3, "DEVELOPMENT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/com/google/inject/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/Stage;->DEVELOPMENT:Lcom/amazon/whispersync/com/google/inject/Stage;

    .line 43
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Stage;

    const/4 v3, 0x2

    const-string v4, "PRODUCTION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/com/google/inject/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/Stage;->PRODUCTION:Lcom/amazon/whispersync/com/google/inject/Stage;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/com/google/inject/Stage;

    .line 24
    sget-object v5, Lcom/amazon/whispersync/com/google/inject/Stage;->TOOL:Lcom/amazon/whispersync/com/google/inject/Stage;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Stage;->DEVELOPMENT:Lcom/amazon/whispersync/com/google/inject/Stage;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/com/google/inject/Stage;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/Stage;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Stage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/com/google/inject/Stage;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Stage;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/com/google/inject/Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/com/google/inject/Stage;

    return-object v0
.end method
