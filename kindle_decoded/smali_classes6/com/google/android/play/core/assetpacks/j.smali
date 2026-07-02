.class final Lcom/google/android/play/core/assetpacks/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/play/core/internal/af;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/bb;

.field private final c:Lcom/google/android/play/core/internal/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/assetpacks/aw;

.field private final e:Lcom/google/android/play/core/splitinstall/p;

.field private final f:Lcom/google/android/play/core/assetpacks/cp;

.field private final g:Lcom/google/android/play/core/assetpacks/bz;

.field private final h:Lcom/google/android/play/core/assetpacks/bn;

.field private final i:Lcom/google/android/play/core/internal/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cj<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/j;->a:Lcom/google/android/play/core/internal/af;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/assetpacks/aw;Lcom/google/android/play/core/splitinstall/p;Lcom/google/android/play/core/assetpacks/cp;Lcom/google/android/play/core/assetpacks/bz;Lcom/google/android/play/core/assetpacks/bn;Lcom/google/android/play/core/internal/cj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/bb;",
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/aw;",
            "Lcom/google/android/play/core/splitinstall/p;",
            "Lcom/google/android/play/core/assetpacks/cp;",
            "Lcom/google/android/play/core/assetpacks/bz;",
            "Lcom/google/android/play/core/assetpacks/bn;",
            "Lcom/google/android/play/core/internal/cj<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/j;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/j;->b:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/j;->c:Lcom/google/android/play/core/internal/cj;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/j;->d:Lcom/google/android/play/core/assetpacks/aw;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/j;->e:Lcom/google/android/play/core/splitinstall/p;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/j;->f:Lcom/google/android/play/core/assetpacks/cp;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/j;->g:Lcom/google/android/play/core/assetpacks/bz;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/j;->h:Lcom/google/android/play/core/assetpacks/bn;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/j;->i:Lcom/google/android/play/core/internal/cj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/assetpacks/j;)Lcom/google/android/play/core/assetpacks/bn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/j;->h:Lcom/google/android/play/core/assetpacks/bn;

    return-object p0
.end method

.method static final synthetic a(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/google/android/play/core/assetpacks/j;->a:Lcom/google/android/play/core/internal/af;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Could not sync active asset packs. %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/play/core/internal/af;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j;->i:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/e;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/e;-><init>(Lcom/google/android/play/core/assetpacks/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j;->d:Lcom/google/android/play/core/assetpacks/aw;

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/b;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->d:Lcom/google/android/play/core/assetpacks/aw;

    invoke-virtual {v1, p1}, Lcom/google/android/play/core/listener/b;->a(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/j;->c()V

    :cond_0
    return-void
.end method

.method final synthetic b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j;->c:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/w;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->b:Lcom/google/android/play/core/assetpacks/bb;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/bb;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/util/Map;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->i:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/j;->b:Lcom/google/android/play/core/assetpacks/bb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/g;->a(Lcom/google/android/play/core/assetpacks/bb;)Lcom/google/android/play/core/tasks/OnSuccessListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->i:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/play/core/assetpacks/h;->a:Lcom/google/android/play/core/tasks/OnFailureListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method
