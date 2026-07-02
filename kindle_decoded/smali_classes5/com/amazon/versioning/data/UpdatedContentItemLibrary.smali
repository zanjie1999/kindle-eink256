.class public Lcom/amazon/versioning/data/UpdatedContentItemLibrary;
.super Ljava/lang/Object;
.source "UpdatedContentItemLibrary.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final lastEvaluatedKey:Ljava/lang/String;

.field private final updatedContentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/UpdatedContentItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->updatedContentItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->lastEvaluatedKey:Ljava/lang/String;

    return-void
.end method

.method public static extractValue(Ljava/io/InputStream;)Lcom/amazon/versioning/data/UpdatedContentItemLibrary;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 49
    sget-object p0, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;

    return-object p0
.end method


# virtual methods
.method public getLastEvaluatedKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->lastEvaluatedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedContentItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/UpdatedContentItem;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->updatedContentItems:Ljava/util/List;

    return-object v0
.end method
