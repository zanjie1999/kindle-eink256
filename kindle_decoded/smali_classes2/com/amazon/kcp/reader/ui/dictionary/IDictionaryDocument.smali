.class public interface abstract Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;
.super Ljava/lang/Object;
.source "IDictionaryDocument.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDefinitionView(Landroid/content/Context;Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/android/docviewer/KindleDocDefinitionView;
.end method

.method public abstract lookupDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;
.end method
