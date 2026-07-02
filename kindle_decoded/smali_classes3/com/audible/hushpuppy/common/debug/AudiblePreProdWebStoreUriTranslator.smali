.class public Lcom/audible/hushpuppy/common/debug/AudiblePreProdWebStoreUriTranslator;
.super Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;
.source "AudiblePreProdWebStoreUriTranslator.java"


# static fields
.field private static final AUDIBLE_PRE_PRODUCTION_WEB_URL:Ljava/lang/String; = "audible-rws-us-emergent.aka.amazon"

.field private static final PRODUCTION_WEB_URL:Ljava/lang/String; = "www.amazon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    const-string v0, "untranslatedUri cannot be null"

    .line 22
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "www.amazon"

    const-string v1, "audible-rws-us-emergent.aka.amazon"

    .line 25
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
