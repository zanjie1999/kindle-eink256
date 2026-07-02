.class public final Lcom/amazon/ebook/util/text/LanguageTagData$LanguageTagDataHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/LanguageTagData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LanguageTagDataHolder"
.end annotation


# static fields
.field static final singleton:Lcom/amazon/ebook/util/text/LanguageTagData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/ebook/util/text/LanguageTagData;

    invoke-direct {v0}, Lcom/amazon/ebook/util/text/LanguageTagData;-><init>()V

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageTagData$LanguageTagDataHolder;->singleton:Lcom/amazon/ebook/util/text/LanguageTagData;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
