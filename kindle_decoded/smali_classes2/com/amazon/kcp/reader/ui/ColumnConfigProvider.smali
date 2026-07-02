.class public interface abstract Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;
.super Ljava/lang/Object;
.source "ReaderColumnConfig.kt"


# virtual methods
.method public abstract getMinimumColumnSpacing(Landroid/content/Context;)I
.end method

.method public abstract getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;
.end method

.method public abstract getSuggestedColumnSpacing(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I
.end method
