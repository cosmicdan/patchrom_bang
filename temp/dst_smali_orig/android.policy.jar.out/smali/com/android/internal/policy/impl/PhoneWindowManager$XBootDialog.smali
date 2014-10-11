.class Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v2, Lxtreamer/app/XBusyDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "android:style/Theme.Translucent.NoTitleBar"

    invoke-static {v3, v4}, Lxtreamer/app/XMethods;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lxtreamer/app/XBusyDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    const-string v2, "android:string/android_upgrading_title"

    invoke-static {v3, v2}, Lxtreamer/app/XMethods;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lxtreamer/app/XBusyDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x102

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lxtreamer/app/XBusyDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->show()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    invoke-virtual {v1}, Lxtreamer/app/XBusyDialog;->show()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Lxtreamer/app/XBusyDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$XBootDialog;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lxtreamer/app/XBusyDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
