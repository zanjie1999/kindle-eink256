.class final Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory;
.super Ljava/lang/Object;
.source "GsonFactory.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonWriter;,
        Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonToken;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory;->convert(Lcom/google/gson/stream/JsonToken;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    move-result-object p0

    return-object p0
.end method

.method private static convert(Lcom/google/gson/stream/JsonToken;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 127
    :cond_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$1;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    .line 149
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->UNKNOWN:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    :pswitch_0
    return-object v0

    .line 145
    :pswitch_1
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 143
    :pswitch_2
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 141
    :pswitch_3
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 139
    :pswitch_4
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 137
    :pswitch_5
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 135
    :pswitch_6
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 133
    :pswitch_7
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 131
    :pswitch_8
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    .line 129
    :pswitch_9
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getJsonReader(Ljava/io/Reader;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public getJsonWriter(Ljava/io/Writer;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonWriter;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method
