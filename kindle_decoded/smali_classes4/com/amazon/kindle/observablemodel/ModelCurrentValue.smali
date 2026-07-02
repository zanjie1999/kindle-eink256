.class public Lcom/amazon/kindle/observablemodel/ModelCurrentValue;
.super Ljava/lang/Object;
.source "ModelCurrentValue.java"


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->createNativePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->mNativePtr:J

    return-void
.end method

.method private native createNativePointer()J
.end method

.method private native destroyNativePointer(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/observablemodel/ModelCurrentValue;->destroyNativePointer(J)V

    return-void
.end method

.method public native getItemAtIndexIDInSection(II)Lcom/amazon/kindle/observablemodel/ItemID;
.end method

.method public native getItemCount()I
.end method

.method public native getItemIDAtPosition(I)Lcom/amazon/kindle/observablemodel/ItemID;
.end method

.method public native getItemIndexTitles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getItemSectionSizes()[I
.end method

.method public native getNumberOfItemsInSection(I)I
.end method

.method public native getNumberOfSections()I
.end method

.method public native getTitleOfSection(I)Ljava/lang/String;
.end method

.method public native mergeChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I
.end method
