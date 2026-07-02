.class public interface abstract Lcom/amazon/kindle/services/locale/ILocaleManager;
.super Ljava/lang/Object;
.source "ILocaleManager.java"


# static fields
.field public static final ARABIC:Ljava/lang/String; = "ar"

.field public static final BRAZIL_PORTUGESE:Ljava/lang/String; = "pt-BR"

.field public static final BRITISH_ENGLISH:Ljava/lang/String; = "en-GB"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final FRENCH:Ljava/lang/String; = "fr-FR"

.field public static final GERMAN:Ljava/lang/String; = "de"

.field public static final GERMAN_GERMAN:Ljava/lang/String; = "de-DE"

.field public static final INDIA_GUJARATI:Ljava/lang/String; = "gu"

.field public static final INDIA_HINDI:Ljava/lang/String; = "hi"

.field public static final INDIA_MALAYALAM:Ljava/lang/String; = "ml"

.field public static final INDIA_MARATHI:Ljava/lang/String; = "mr"

.field public static final INDIA_TAMIL:Ljava/lang/String; = "ta"

.field public static final ITALIAN:Ljava/lang/String; = "it-IT"

.field public static final JAPANESE:Ljava/lang/String; = "ja-JP"

.field public static final KOREAN:Ljava/lang/String; = "ko-KR"

.field public static final SIMPLIFIED_CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final SPANISH:Ljava/lang/String; = "es-ES"

.field public static final TRADITIONAL_CHINESE:Ljava/lang/String; = "zh-TW"

.field public static final US_ENGLISH:Ljava/lang/String; = "en-US"


# virtual methods
.method public abstract getAmazonLocaleCode()Ljava/lang/String;
.end method

.method public abstract getLocaleCode()Ljava/lang/String;
.end method

.method public abstract getSupportedLocales()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshLocaleSettings()V
.end method
