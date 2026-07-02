.class public final enum Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;
.super Ljava/lang/Enum;
.source "CollectionsJSONUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLLECTION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

.field public static final enum BOOKS:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    const/4 v1, 0x0

    const-string v2, "BOOKS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;->BOOKS:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    aput-object v0, v2, v1

    .line 40
    sput-object v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;->$VALUES:[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;->$VALUES:[Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil$COLLECTION_TYPE;

    return-object v0
.end method
