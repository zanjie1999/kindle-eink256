.class public abstract Lcom/amazon/kindle/krx/ui/brochure/BrochureSlide;
.super Ljava/lang/Object;
.source "BrochureSlide.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureSlide;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BrochureSlide;->text:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public textIsTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
