.class public abstract Lcom/amazon/ksdk/profiles/DynamicConfigWrapper;
.super Ljava/lang/Object;
.source "DynamicConfigWrapper.java"


# static fields
.field public static final PROFILE_URL_DEFAULT:Ljava/lang/String; = "https://prod.us-east-1.mystique.digital-books.amazon.dev"

.field public static final PROFILE_URL_EU:Ljava/lang/String; = "https://prod.eu-west-1.mystique.digital-books.amazon.dev"

.field public static final PROFILE_URL_FE:Ljava/lang/String; = "https://prod.us-west-2.mystique.digital-books.amazon.dev"

.field public static final PROFILE_URL_KEY:Ljava/lang/String; = "url.mystiqueProfileService"

.field public static final PROFILE_URL_NA:Ljava/lang/String; = "https://prod.us-east-1.mystique.digital-books.amazon.dev"

.field public static final SHARING_URL_DE:Ljava/lang/String; = "https://sharingservice.amazon.co.uk"

.field public static final SHARING_URL_DEFAULT:Ljava/lang/String; = "https://sharingservice.amazon.com"

.field public static final SHARING_URL_KEY:Ljava/lang/String; = "url.ss"

.field public static final SHARING_URL_UK:Ljava/lang/String; = "https://sharingservice.amazon.co.uk"

.field public static final SHARING_URL_US:Ljava/lang/String; = "https://sharingservice.amazon.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method
