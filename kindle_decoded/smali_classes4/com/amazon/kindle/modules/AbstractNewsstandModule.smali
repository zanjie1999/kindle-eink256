.class public abstract Lcom/amazon/kindle/modules/AbstractNewsstandModule;
.super Ljava/lang/Object;
.source "AbstractNewsstandModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# static fields
.field private static moduleInstance:Lcom/amazon/kindle/modules/AbstractNewsstandModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/amazon/kindle/modules/AbstractNewsstandModule;->moduleInstance:Lcom/amazon/kindle/modules/AbstractNewsstandModule;

    if-nez v0, :cond_0

    .line 32
    sput-object p0, Lcom/amazon/kindle/modules/AbstractNewsstandModule;->moduleInstance:Lcom/amazon/kindle/modules/AbstractNewsstandModule;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Module constructors can only be called once."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
