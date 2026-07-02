.class public Lcom/audible/hushpuppy/common/debug/AudibleSandBoxWebStoreUriTranslator;
.super Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;
.source "AudibleSandBoxWebStoreUriTranslator.java"


# static fields
.field private static final AUDIBLE_SANDBOX_WEB_URL:Ljava/lang/String; = "homestead-rws-us-sandbox-a.aka.amazon"

.field private static final PRODUCTION_WEB_URL:Ljava/lang/String; = "www.amazon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/debug/DebugUriTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    const-string v0, "untranslatedUri cannot be null"

    .line 23
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "www.amazon"

    const-string v1, "homestead-rws-us-sandbox-a.aka.amazon"

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
