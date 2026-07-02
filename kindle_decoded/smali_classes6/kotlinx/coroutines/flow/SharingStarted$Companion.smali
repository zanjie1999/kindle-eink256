.class public final Lkotlinx/coroutines/flow/SharingStarted$Companion;
.super Ljava/lang/Object;
.source "SharingStarted.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/SharingStarted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/coroutines/flow/SharingStarted$Companion;

.field private static final Eagerly:Lkotlinx/coroutines/flow/SharingStarted;

.field private static final Lazily:Lkotlinx/coroutines/flow/SharingStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->$$INSTANCE:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 80
    new-instance v0, Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedEagerly;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/SharingStarted;

    .line 85
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedLazily;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/SharingStarted;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEagerly()Lkotlinx/coroutines/flow/SharingStarted;
    .locals 1

    .line 80
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/SharingStarted;

    return-object v0
.end method

.method public final getLazily()Lkotlinx/coroutines/flow/SharingStarted;
    .locals 1

    .line 85
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/SharingStarted;

    return-object v0
.end method
