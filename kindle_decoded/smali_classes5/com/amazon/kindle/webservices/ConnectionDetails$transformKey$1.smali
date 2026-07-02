.class final synthetic Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ConnectionDetails.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/ConnectionDetails;->transformKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;->INSTANCE:Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lkotlin/text/StringsKt;

    const/4 v1, 0x1

    const-string v3, "isEmpty"

    const-string v4, "isEmpty(Ljava/lang/CharSequence;)Z"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;->invoke(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
