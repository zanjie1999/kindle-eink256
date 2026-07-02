.class final Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordSettingsChangeFastMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;->sendSettingsChangeInt(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isChanged:Z

.field final synthetic $settingName:Ljava/lang/String;

.field final synthetic $settingValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;->$settingName:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;->$settingValue:I

    iput-boolean p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;->$isChanged:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;->$settingName:Ljava/lang/String;

    const-string v1, "setting_name"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 34
    iget v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;->$settingValue:I

    const-string v1, "setting_value"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 35
    iget-boolean v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;->$isChanged:Z

    const-string v1, "is_changed"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addBoolean(IS_CHANGED, isChanged)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
