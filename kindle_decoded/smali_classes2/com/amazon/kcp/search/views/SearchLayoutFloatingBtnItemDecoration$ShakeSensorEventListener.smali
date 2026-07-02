.class Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;
.super Ljava/lang/Object;
.source "SearchLayoutFloatingBtnItemDecoration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShakeSensorEventListener"
.end annotation


# static fields
.field private static final MIN_TIME_BETWEEN_SHAKES_MILLIS:I = 0x3e8

.field private static final SHAKE_THRESHOLD:F = 18.0f


# instance fields
.field private mLastShakeTime:J

.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$1000(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    iget-wide v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;->mLastShakeTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 292
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 294
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 296
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v4, 0x41900000    # 18.0f

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_1

    cmpl-float v2, v3, v4

    if-gtz v2, :cond_1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_2

    .line 302
    :cond_1
    iput-wide v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;->mLastShakeTime:J

    .line 303
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$300(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    .line 304
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$1100(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$string;->library_search_section_collapsed_confirmation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;->this$0:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-static {v1}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->access$1200(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_2
    return-void
.end method
