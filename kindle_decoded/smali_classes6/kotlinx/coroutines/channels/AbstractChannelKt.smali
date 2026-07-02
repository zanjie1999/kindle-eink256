.class public final Lkotlinx/coroutines/channels/AbstractChannelKt;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ValueOrClosed$Companion\n*L\n1#1,1151:1\n420#2:1152\n416#2:1153\n420#2:1154\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n*L\n1147#1:1152\n1147#1:1153\n1150#1:1154\n*E\n"
.end annotation


# static fields
.field public static final EMPTY:Lkotlinx/coroutines/internal/Symbol;

.field public static final ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

.field public static final HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

.field public static final OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

.field public static final OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

.field public static final POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1031
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 1035
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 1039
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 1043
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 1047
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ENQUEUE_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 1051
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method
