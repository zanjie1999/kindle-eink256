.class public final Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;
.super Ljava/lang/Object;
.source "MccToISO31661Convertor.java"


# static fields
.field private static final MCC_TO_ISO3166_1_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x19c

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x25b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x277

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x16d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x11b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x16b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x16c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x268

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BJ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x28c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x15c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x210

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x11c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x265

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x282

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x271

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x15a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x26f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x26e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x28e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x275

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x264

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x170

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x16a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x276

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x27e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DJ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x16e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x25a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x273

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x291

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x27c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ET"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x21e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FJ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x223

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x274

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x25f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x11a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x26c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x217

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GU"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x2c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x263

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x278

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GW"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x2e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GY"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x174

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x2c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x1c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HK"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HU"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x195

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x1fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ID"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x1b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IR"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x1a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IQ"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v2, 0x1a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IL"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0xde

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "IT"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x152

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "JM"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1b9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "JP"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1b8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "JO"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x191

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KZ"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x27f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KE"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x221

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KI"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KP"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KR"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KW"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KG"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LA"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0xf7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LV"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x19f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LB"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x28b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LS"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x26a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LR"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x25e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LY"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x127

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LI"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0xf6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LT"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x10e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LU"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1c7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MO"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x126

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MK"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x286

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MG"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x28a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MW"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MY"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x1d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MV"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x262

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ML"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x116

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MT"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v3, 0x227

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MH"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const-string v3, "MQ"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x261

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MR"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x269

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MU"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MX"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x226

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "FM"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MD"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MC"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MN"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x129

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "ME"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MS"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x25c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x283

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MZ"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x19e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MM"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x289

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x218

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NR"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NP"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NL"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NC"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x212

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NZ"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NI"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x266

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NE"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x26d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NG"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x22b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NU"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x216

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "MP"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "NO"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "OM"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x19a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "PK"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x228

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "PW"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const-string v1, "PS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x219

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x14a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x287

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x27b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x225

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x124

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x272

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x260

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x279

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x26b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x20d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xe7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x125

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x21c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x27d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x28f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ZA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x19d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x27a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x28d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TJ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x267

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x21b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x25d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x11e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x178

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x281

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "US"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x138

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x13b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x14c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x21d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x2de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x21f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x1a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "YE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x285

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ZM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    const/16 v1, 0x288

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ZW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static convert(I)Ljava/lang/String;
    .locals 1

    .line 255
    sget-object v0, Lcom/amazon/messaging/odot/webservices/util/MccToISO31661Convertor;->MCC_TO_ISO3166_1_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
