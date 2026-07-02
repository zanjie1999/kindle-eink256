.class final Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;
.super Ljava/lang/Object;
.source "KfaReviewUtils.kt"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;->onComplete(Lcom/google/android/play/core/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;

    invoke-direct {v0}, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;->INSTANCE:Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    invoke-static {}, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Asked system to ask user for review"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
