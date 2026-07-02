.class final Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;
.super Ljava/lang/Object;
.source "NativeHost.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/NativeHostKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;

    invoke-direct {v0}, Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;->INSTANCE:Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
