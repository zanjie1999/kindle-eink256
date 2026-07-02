.class Lcom/google/crypto/tink/subtle/PrfHmacJce$1;
.super Ljava/lang/ThreadLocal;
.source "PrfHmacJce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/PrfHmacJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavax/crypto/Mac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/subtle/PrfHmacJce;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/subtle/PrfHmacJce;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce$1;->this$0:Lcom/google/crypto/tink/subtle/PrfHmacJce;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/PrfHmacJce$1;->initialValue()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljavax/crypto/Mac;
    .locals 2

    .line 39
    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce$1;->this$0:Lcom/google/crypto/tink/subtle/PrfHmacJce;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/PrfHmacJce;->access$000(Lcom/google/crypto/tink/subtle/PrfHmacJce;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 40
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/PrfHmacJce$1;->this$0:Lcom/google/crypto/tink/subtle/PrfHmacJce;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/PrfHmacJce;->access$100(Lcom/google/crypto/tink/subtle/PrfHmacJce;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
