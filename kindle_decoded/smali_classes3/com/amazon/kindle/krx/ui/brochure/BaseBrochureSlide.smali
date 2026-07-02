.class public abstract Lcom/amazon/kindle/krx/ui/brochure/BaseBrochureSlide;
.super Ljava/lang/Object;
.source "BaseBrochureSlide.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;


# static fields
.field private static final PLACEHOLDER_METRIC_KEY:Ljava/lang/String; = "BrochureSlide"


# instance fields
.field private m_metricKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricKey()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/brochure/BaseBrochureSlide;->m_metricKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BrochureSlide"

    :goto_0
    return-object v0
.end method

.method public abstract getView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public final setMetricKey(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/brochure/BaseBrochureSlide;->m_metricKey:Ljava/lang/String;

    return-void
.end method
