.class final enum Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

.field public static final enum DONE:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

.field public static final enum FAILED:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

.field public static final enum READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v1, 0x0

    const-string v2, "READY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    .line 67
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v2, 0x1

    const-string v3, "NOT_READY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->NOT_READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    .line 70
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->DONE:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    .line 73
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->FAILED:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    .line 62
    sget-object v6, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->NOT_READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->DONE:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;
    .locals 1

    .line 62
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    return-object v0
.end method
