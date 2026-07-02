.class public Lcom/amazon/kindle/krx/action/BaseAction;
.super Lcom/amazon/kindle/krx/foundation/BasePrioritized;
.source "BaseAction.java"

# interfaces
.implements Lcom/amazon/kindle/krx/action/Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kindle/krx/foundation/BasePrioritized;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
