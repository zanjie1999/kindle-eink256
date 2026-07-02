.class public interface abstract Lcom/amazon/readingactions/helpers/IChromeClickHandler;
.super Ljava/lang/Object;
.source "IChromeClickHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;,
        Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;
    }
.end annotation


# virtual methods
.method public abstract canDisplayChromeOption(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method

.method public abstract canRegisterChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z
.end method

.method public abstract handleChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z
.end method
