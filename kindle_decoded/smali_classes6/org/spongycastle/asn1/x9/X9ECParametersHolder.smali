.class public abstract Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.super Ljava/lang/Object;
.source "X9ECParametersHolder.java"


# instance fields
.field private params:Lorg/spongycastle/asn1/x9/X9ECParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
.end method

.method public getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->params:Lorg/spongycastle/asn1/x9/X9ECParameters;

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->params:Lorg/spongycastle/asn1/x9/X9ECParameters;

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->params:Lorg/spongycastle/asn1/x9/X9ECParameters;

    return-object v0
.end method
