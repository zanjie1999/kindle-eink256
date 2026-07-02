.class public Lcom/amazon/kindle/cms/DefaultCMSItemLocationFactory;
.super Ljava/lang/Object;
.source "DefaultCMSItemLocationFactory.java"

# interfaces
.implements Lcom/amazon/kindle/cms/ICMSItemLocationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemLocation(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/cms/api/ItemLocation;
    .locals 2

    .line 9
    sget-object v0, Lcom/amazon/kindle/cms/DefaultCMSItemLocationFactory$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 26
    :pswitch_0
    sget-object p1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_RETRYABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object p1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_FAILED:Lcom/amazon/kindle/cms/api/ItemLocation;

    goto :goto_0

    .line 20
    :pswitch_2
    sget-object p1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_QUEUED:Lcom/amazon/kindle/cms/api/ItemLocation;

    goto :goto_0

    .line 17
    :pswitch_3
    sget-object p1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ACTIVE:Lcom/amazon/kindle/cms/api/ItemLocation;

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL:Lcom/amazon/kindle/cms/api/ItemLocation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    goto :goto_0

    .line 11
    :pswitch_5
    sget-object p1, Lcom/amazon/kindle/cms/api/ItemLocation;->CLOUD_DOWNLOADABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
