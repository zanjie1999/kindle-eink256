.class public final Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory;
.super Ljava/lang/Object;
.source "WeblabManagerFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory;->Companion:Lcom/amazon/kindle/krx/mobileweblab/WeblabManagerFactory$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
