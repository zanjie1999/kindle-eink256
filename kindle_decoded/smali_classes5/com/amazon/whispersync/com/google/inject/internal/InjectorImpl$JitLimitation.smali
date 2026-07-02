.class final enum Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;
.super Ljava/lang/Enum;
.source "InjectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JitLimitation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

.field public static final enum EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

.field public static final enum NEW_OR_EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

.field public static final enum NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 94
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    const/4 v1, 0x0

    const-string v2, "NO_JIT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    .line 96
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    const/4 v2, 0x1

    const-string v3, "EXISTING_JIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    .line 98
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    const/4 v3, 0x2

    const-string v4, "NEW_OR_EXISTING_JIT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    .line 92
    sget-object v5, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;
    .locals 1

    .line 92
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;
    .locals 1

    .line 92
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    return-object v0
.end method
