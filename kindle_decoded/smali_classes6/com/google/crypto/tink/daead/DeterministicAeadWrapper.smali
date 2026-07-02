.class public Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;
.super Ljava/lang/Object;
.source "DeterministicAeadWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/PrimitiveWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/PrimitiveWrapper<",
        "Lcom/google/crypto/tink/DeterministicAead;",
        "Lcom/google/crypto/tink/DeterministicAead;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;

    invoke-direct {v0}, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/Registry;->registerPrimitiveWrapper(Lcom/google/crypto/tink/PrimitiveWrapper;)V

    return-void
.end method


# virtual methods
.method public getInputPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/DeterministicAead;",
            ">;"
        }
    .end annotation

    .line 109
    const-class v0, Lcom/google/crypto/tink/DeterministicAead;

    return-object v0
.end method

.method public getPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/DeterministicAead;",
            ">;"
        }
    .end annotation

    .line 104
    const-class v0, Lcom/google/crypto/tink/DeterministicAead;

    return-object v0
.end method

.method public wrap(Lcom/google/crypto/tink/PrimitiveSet;)Lcom/google/crypto/tink/DeterministicAead;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/DeterministicAead;",
            ">;)",
            "Lcom/google/crypto/tink/DeterministicAead;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper$WrappedDeterministicAead;-><init>(Lcom/google/crypto/tink/PrimitiveSet;)V

    return-object v0
.end method

.method public bridge synthetic wrap(Lcom/google/crypto/tink/PrimitiveSet;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;->wrap(Lcom/google/crypto/tink/PrimitiveSet;)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p1

    return-object p1
.end method
