.class final Lcom/audible/mobile/identity/AmazonDomain;
.super Lcom/audible/mobile/identity/AbstractDomain;
.source "AmazonDomain.java"


# static fields
.field private static final AMAZON:Ljava/lang/String; = "amazon"


# direct methods
.method constructor <init>(Lcom/audible/mobile/identity/TopLevelDomain;)V
    .locals 1

    const-string v0, "amazon"

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/identity/AbstractDomain;-><init>(Ljava/lang/String;Lcom/audible/mobile/identity/TopLevelDomain;)V

    return-void
.end method
