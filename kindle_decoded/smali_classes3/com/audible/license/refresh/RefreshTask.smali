.class public final Lcom/audible/license/refresh/RefreshTask;
.super Ljava/lang/Object;
.source "RefreshTask.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/refresh/RefreshTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/audible/license/refresh/RefreshTask;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRefreshTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefreshTask.kt\ncom/audible/license/refresh/RefreshTask\n*L\n1#1,60:1\n*E\n"
.end annotation


# static fields
.field private static final COMPARATOR_BY_PRIORITY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/audible/license/refresh/RefreshTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowLicensingEvent:Z

.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:Lcom/audible/license/refresh/Priority;

.field private final voucherRepository:Lcom/audible/license/repository/VoucherRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/refresh/RefreshTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/refresh/RefreshTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    new-instance v0, Lcom/audible/license/refresh/RefreshTask$$special$$inlined$compareBy$1;

    invoke-direct {v0}, Lcom/audible/license/refresh/RefreshTask$$special$$inlined$compareBy$1;-><init>()V

    sput-object v0, Lcom/audible/license/refresh/RefreshTask;->COMPARATOR_BY_PRIORITY:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/refresh/Priority;ZLcom/audible/license/repository/VoucherRepository;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/refresh/RefreshTask;->asin:Lcom/audible/mobile/domain/Asin;

    iput-object p2, p0, Lcom/audible/license/refresh/RefreshTask;->priority:Lcom/audible/license/refresh/Priority;

    iput-boolean p3, p0, Lcom/audible/license/refresh/RefreshTask;->allowLicensingEvent:Z

    iput-object p4, p0, Lcom/audible/license/refresh/RefreshTask;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    return-void
.end method

.method public static final synthetic access$getPriority$p(Lcom/audible/license/refresh/RefreshTask;)Lcom/audible/license/refresh/Priority;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/audible/license/refresh/RefreshTask;->priority:Lcom/audible/license/refresh/Priority;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/audible/license/refresh/RefreshTask;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/audible/license/refresh/RefreshTask;->COMPARATOR_BY_PRIORITY:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Lcom/audible/license/refresh/RefreshTask;

    invoke-virtual {p0, p1}, Lcom/audible/license/refresh/RefreshTask;->compareTo(Lcom/audible/license/refresh/RefreshTask;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 38
    instance-of v2, p1, Lcom/audible/license/refresh/RefreshTask;

    if-nez v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/audible/license/refresh/RefreshTask;->asin:Lcom/audible/mobile/domain/Asin;

    check-cast p1, Lcom/audible/license/refresh/RefreshTask;

    iget-object p1, p1, Lcom/audible/license/refresh/RefreshTask;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getFuture$audible_android_cdn_release()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/audible/license/refresh/RefreshTask;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/audible/license/refresh/RefreshTask;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/audible/license/refresh/RefreshTask;->voucherRepository:Lcom/audible/license/repository/VoucherRepository;

    iget-object v1, p0, Lcom/audible/license/refresh/RefreshTask;->asin:Lcom/audible/mobile/domain/Asin;

    iget-boolean v2, p0, Lcom/audible/license/refresh/RefreshTask;->allowLicensingEvent:Z

    invoke-interface {v0, v1, v2}, Lcom/audible/license/repository/VoucherRepository;->refresh(Lcom/audible/mobile/domain/Asin;Z)Z

    return-void
.end method

.method public final setFuture$audible_android_cdn_release(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/audible/license/refresh/RefreshTask;->future:Ljava/util/concurrent/Future;

    return-void
.end method
