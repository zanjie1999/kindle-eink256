.class public final Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;
.super Ljava/lang/Object;
.source "OkHttpWebRequestExecutor.kt"


# static fields
.field private static final RETRYABLE_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-class v0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x1f4

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->RETRYABLE_CODES:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getRETRYABLE_CODES$p()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->RETRYABLE_CODES:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutorKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
