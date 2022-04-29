<?php

namespace App\Admin\Controllers;

use App\Models\Membership;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MembershipController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Membership';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Membership());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('period', __('Period'));
        $grid->column('cost', __('Cost'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Membership::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('period', __('Period'));
        $show->field('cost', __('Cost'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Membership());

        $form->text('name', __('Name'));
        $form->number('period', __('Period'));
        $form->decimal('cost', __('Cost'));

        return $form;
    }
}
