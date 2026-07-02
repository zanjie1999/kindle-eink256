.class Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPInformationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectionInfo"
.end annotation


# static fields
.field private static final gv:Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;


# instance fields
.field public final bulkData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final directedId:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public final timestamp:Ljava/util/Date;

.field public final userdata:Landroid/os/Bundle;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 61
    new-instance v9, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    sput-object v9, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->gv:Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->directedId:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->key:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->value:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->namespace:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->displayName:Ljava/lang/String;

    .line 93
    invoke-static {p6}, Lcom/amazon/identity/auth/device/ir;->dr(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->userdata:Landroid/os/Bundle;

    .line 94
    iput-object p7, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->timestamp:Ljava/util/Date;

    .line 95
    invoke-static {p8}, Lcom/amazon/identity/auth/device/ir;->dq(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->bulkData:Ljava/util/Collection;

    return-void
.end method

.method public static parseSelection(Landroid/content/ContentValues;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;
    .locals 12

    .line 100
    new-instance v9, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    const-string v0, "directedId"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "key"

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "value"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "namespace"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "display_name"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "userdata_bundle_key"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "timestamp_key"

    .line 1172
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 1179
    :cond_0
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    :goto_0
    const-string v0, "bulk_data"

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v9
.end method

.method public static parseSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 116
    :try_start_0
    sget-object p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;->gv:Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    goto :goto_1

    .line 1189
    :cond_1
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    .line 1190
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1192
    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_1
    const-string v1, "\"?\""

    const-string v2, "%s"

    .line 121
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 125
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance p0, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;

    const-string v1, "directedId"

    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "key"

    .line 130
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "value"

    .line 133
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "namespace"

    .line 136
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "display_name"

    .line 139
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "userdata_bundle_key"

    .line 142
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "timestamp_key"

    .line 2165
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2167
    invoke-static {v1}, Lcom/amazon/identity/auth/device/jg;->dF(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string v1, "bulk_data"

    .line 146
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider$SelectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 156
    :catch_1
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Format was not valid JSON"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 152
    :goto_2
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPInformationProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Format not valid. Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method
