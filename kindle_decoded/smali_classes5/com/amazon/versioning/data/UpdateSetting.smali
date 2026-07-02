.class public Lcom/amazon/versioning/data/UpdateSetting;
.super Ljava/lang/Object;
.source "UpdateSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/versioning/data/UpdateSetting;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/amazon/versioning/data/UpdateSetting;->isEnabled:Z

    return-void
.end method

.method public static extractValue(Ljava/io/InputStream;)Lcom/amazon/versioning/data/UpdateSetting;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/amazon/versioning/data/UpdateSetting;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/amazon/versioning/data/UpdateSetting;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/versioning/data/UpdateSetting;

    return-object p0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/amazon/versioning/data/UpdateSetting;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/versioning/data/UpdateSetting;->isEnabled:Z

    return-void
.end method
