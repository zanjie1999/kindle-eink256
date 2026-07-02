.class Lcom/amazon/klo/KLOApp$SingletonHolder;
.super Ljava/lang/Object;
.source "KLOApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KLOApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/klo/KLOApp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 184
    new-instance v0, Lcom/amazon/klo/KLOApp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/klo/KLOApp;-><init>(Lcom/amazon/klo/KLOApp$1;)V

    sput-object v0, Lcom/amazon/klo/KLOApp$SingletonHolder;->INSTANCE:Lcom/amazon/klo/KLOApp;

    return-void
.end method
