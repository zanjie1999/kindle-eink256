.class final Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KindleAuthenticationManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;-><init>(Landroid/content/Context;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;

    invoke-direct {v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;->INSTANCE:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;->invoke()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 66
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 67
    new-instance v7, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v1, Lcom/amazon/kindle/util/Named;

    const-string v2, "KindleAuthenticationManager"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {v7, v0}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, v8

    .line 66
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method
