.class public abstract Lcom/amazon/org/codehaus/jackson/map/Module;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract setupModule(Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;)V
.end method

.method public abstract version()Lcom/amazon/org/codehaus/jackson/Version;
.end method
