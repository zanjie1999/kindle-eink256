.class public final Lcom/amazon/kindle/download/assets/AssetStateContentValues;
.super Ljava/lang/Object;
.source "AssetStateContentValues.java"


# instance fields
.field private final values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->values:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public getValues()Landroid/content/ContentValues;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->values:Landroid/content/ContentValues;

    return-object v0
.end method

.method public put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/Integer;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/Long;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putNull(Lcom/amazon/kindle/download/assets/AssetField;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-void
.end method
