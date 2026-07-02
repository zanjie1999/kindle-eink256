.class synthetic Lcom/amazon/sitb/android/StoreRequestBuilder$1;
.super Ljava/lang/Object;
.source "StoreRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/StoreRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$sitb$android$StoreCookie:[I

.field static final synthetic $SwitchMap$com$amazon$sitb$android$StoreQueryParam:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 215
    invoke-static {}, Lcom/amazon/sitb/android/StoreCookie;->values()[Lcom/amazon/sitb/android/StoreCookie;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/sitb/android/StoreRequestBuilder$1;->$SwitchMap$com$amazon$sitb$android$StoreCookie:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/sitb/android/StoreCookie;->X_ACCESS_TOKEN:Lcom/amazon/sitb/android/StoreCookie;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :catch_0
    invoke-static {}, Lcom/amazon/sitb/android/StoreQueryParam;->values()[Lcom/amazon/sitb/android/StoreQueryParam;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/sitb/android/StoreRequestBuilder$1;->$SwitchMap$com$amazon$sitb$android$StoreQueryParam:[I

    :try_start_1
    sget-object v2, Lcom/amazon/sitb/android/StoreQueryParam;->COUNTRY_OF_RESIDENCE:Lcom/amazon/sitb/android/StoreQueryParam;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/sitb/android/StoreRequestBuilder$1;->$SwitchMap$com$amazon$sitb$android$StoreQueryParam:[I

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_SERIAL_NUMBER:Lcom/amazon/sitb/android/StoreQueryParam;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/sitb/android/StoreRequestBuilder$1;->$SwitchMap$com$amazon$sitb$android$StoreQueryParam:[I

    sget-object v1, Lcom/amazon/sitb/android/StoreQueryParam;->DEVICE_TYPE:Lcom/amazon/sitb/android/StoreQueryParam;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
